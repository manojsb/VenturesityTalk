from rest_framework import serializers
from . import models


class CustomerSerializer(serializers.ModelSerializer):

    class Meta:
        model = models.Customer
        fields = ('created', 'name', 'age', 'email')
