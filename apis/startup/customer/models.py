from __future__ import unicode_literals

from django.db import models


class Customer(models.Model):
    created = models.DateTimeField(auto_now_add=True)
    name = models.CharField(max_length=100, blank=True, default='')
    age = models.IntegerField()
    email = models.EmailField()

    class Meta:
        ordering = ('created',)
