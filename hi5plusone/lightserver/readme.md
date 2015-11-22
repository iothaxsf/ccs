#!/bin/bash
pip install --user virtualenv
virtualenv flask
flask/bin/pip install flask
wget https://raw.githubusercontent.com/iothaxsf/ccs/master/hi5plusone/lightserver/api.py
bg python api.py

http://localhost:5000/
curl -i -H "Content-Type: application/json" -X POST -d '{"action":"lights"}' http://localhost:5000/api

curl -i -H "Content-Type: application/json" -X POST -d '{"action":"alert"}' http://localhost:5000/api

curl -i -H "Content-Type: application/json" -X POST -d '{"action":"confirm"}' http://localhost:5000/api

curl -i -H "Content-Type: application/json" -X POST -d '{"action":"reset"}' http://localhost:5000/api

