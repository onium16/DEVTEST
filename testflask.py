from flask import Flask
 
app = Flask(__name__)
 
 
@app.route('/')
@app.route('/index')
def index():
    return "Привет!"

@app.route('/test')
def test():
    return "<h1>TEST_PAGE</h1>"
 
 
if __name__ == '__main__':
    app.run()