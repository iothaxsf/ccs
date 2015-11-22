#!flask/bin/python
from flask import Flask, jsonify, request

'''
pip install virtualenv
virtualenv flask
flask/bin/pip install flask
chmod +x api.py
./api.py
http://localhost:5000/
curl -i -H "Content-Type: application/json" -X POST -d '{"action":"lights"}' http://localhost:5000/api

curl -i -H "Content-Type: application/json" -X POST -d '{"action":"alert"}' http://localhost:5000/api

curl -i -H "Content-Type: application/json" -X POST -d '{"action":"confirm"}' http://localhost:5000/api

curl -i -H "Content-Type: application/json" -X POST -d '{"action":"reset"}' http://localhost:5000/api
'''

def respond(resp):
	return jsonify({'response': resp}),201

def lightsup():
	return respond("lights up")

def confirm():
	return respond("confirm")
	
def alert():
	return respond("alert")

def reset():
	return respond("alert")
	
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
    app.run(debug=True)
    