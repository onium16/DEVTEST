from flask import Flask
 
app = Flask(__name__)
 
 
@app.route('/')
@app.route('/index')
def index():
    return "Привет!"
 
 
if __name__ == '__main__':
    app.run()