#!/bin/bash

# This script is to get weather data from openweathermap.com in the form of a json file
# so that conky will still display the weather when offline even though it doesn't up to date

# you can use this or replace with yours
api_key=21d7e6d9470aa28a20473c019e2208ce
# get your city id at https://openweathermap.org/find and replace
city_id=3461789

url="api.openweathermap.org/data/2.5/weather?id=${city_id}&appid=${api_key}&cnt=5&units=metric&lang=pt"
curl ${url} -s -o ~/.cache/weather.json
