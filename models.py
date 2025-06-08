from django.db import models
from django.db import connections

class Soilmoisture(models.Model):
    temperature=models.CharField(max_length=100)
    humidity=models.CharField(max_length=100)
    moisture=models.CharField(max_length=100)
    class Meta:
        db_table="soilmoisture"
        
class PredResults(models.Model):

    pressure = models.FloatField()
    particulate_matter1 = models.FloatField()
    particulate_matter2 = models.FloatField()
    particulate_matter3 = models.FloatField()
    atmospheric_moisture = models.FloatField()
    luminosity = models.FloatField()
    temperature = models.FloatField()
    humidity = models.FloatField()
    classification = models.CharField(max_length=30)

    def __str__(self):
        return self.classification