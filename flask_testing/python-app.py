from flask import Flask
from flask import send_from_directory
from flask import render_template

app = Flask(__name__)

FLUTTER_WEB_APP = 'templates/web/'

@app.route('/')
def render_page():
    return render_template('/web/index.html')

@app.route('/web/')
def render_page_web():
    return render_template('/web/index.html')

@app.route('/web/<path:name>')
def return_flutter_doc(name):
    print("YES")
    print(name)

    return send_from_directory(FLUTTER_WEB_APP, name)

if __name__=="__main__":
    app.run(host="0.0.0.0", debug=True)