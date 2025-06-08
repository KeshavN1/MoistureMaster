#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <DHT.h>

const char* ssid = "bestofbestboyshostel_2";
const char* password = "Vivek123@@##";
const char* host = "192.168.1.92"; // Update with your server IP or domain

#define DHTPIN 5      // Digital pin D1 connected to the DHT sensor
#define DHTTYPE DHT11 // DHT 11

DHT dht(DHTPIN, DHTTYPE);

void setup() {
  Serial.begin(9600);
  Serial.println("DHT11 Output");
  dht.begin();
  
  // Connect to Wi-Fi
  WiFi.begin(ssid, password);
  Serial.println("Connecting to WiFi");
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.print(".");
  }
  Serial.println();
  
  // Print ESP8266 Local IP Address
  Serial.println("WiFi connected");
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());
}

void loop() {
  // Read sensor values
  int moisture = analogRead(A0); // Read moisture sensor
  float temperature = dht.readTemperature(); // Read temperature
  float humidity = dht.readHumidity(); // Read humidity
  
  // Check if any sensor reading is NaN (not a number)
  if (isnan(temperature) || isnan(humidity) || isnan(moisture)) {
    Serial.println("Failed to read sensor data");
  } else {
    // Print sensor data
    Serial.print("Humidity: ");
    Serial.print(humidity);
    Serial.print(" %\tTemperature: ");
    Serial.print(temperature);
    Serial.print(" *C\tMoisture: ");
    Serial.println(moisture);
  }
  
  // Connect to server
  Serial.print("Connecting to ");
  Serial.println(host);
  WiFiClient client;
  const int httpPort = 80;
  if (!client.connect(host, httpPort)) {
    Serial.println("Connection failed");
    return;
  }
  
  // Send sensor data to server
  client.print(String("GET http://localhost/Soilmoisture/connection.php?") +
               "temperature=" + temperature +
               "&humidity=" + humidity +
               "&moisture=" + moisture +
               " HTTP/1.1\r\n" +
               "Host: " + host + "\r\n" +
               "Connection: close\r\n\r\n");
  
  // Wait for response
  unsigned long timeout = millis();
  while (client.available() == 0) {
    if (millis() - timeout > 5000) { // Timeout after 5 seconds
      Serial.println("Client timeout");
      client.stop();
      return;
    }
  }
  
  // Read response from server
  while (client.available()) {
    String line = client.readStringUntil('\r');
    Serial.print(line);
  }
  
  Serial.println();
  Serial.println("Closing connection");
  delay(10000); // Delay before next iteration
}
