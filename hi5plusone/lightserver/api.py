#!/usr/bin/python
from flask import Flask, jsonify, request

def respond(resp):
	return jsonify({'response': resp}),201

def lightsup():
	return respond("lights up")

def confirm():
	return respond("confirm")
	
def alert():
	return respond("alert")

def reset():
	return respond("reset")
	
app = Flask(__name__)

@app.route('/')
def index():
    return "Hello, World! try a GET or a POST on /api"
    
@app.route('/api', methods=['GET'])
def get_task():
    return respond("use POST")

@app.route('/api', methods=['POST'])
def lights():
    if not request.json or not 'action' in request.json:
        abort(400)
    actions = {
    	"lights": lightsup,
    	"confirm": confirm,
    	"alert": alert,
    	"reset": reset
    } 
    return actions[request.json['action']]()

if __name__ == '__main__':
    app.debug = True
    app.run(host='0.0.0.0')
    
