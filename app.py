from flask import Flask, render_template
from flask_googlemaps import GoogleMaps
from flask_googlemaps import Map
from config import gkey
import pymongo

# Create an instance of our Flask app.
#app = Flask(__name__)
app = Flask(__name__, template_folder=".")

# you can set key as config
app.config['GOOGLEMAPS_KEY'] = gkey

# you can also pass the key here if you prefer
GoogleMaps(app, key=gkey)


@app.route("/")
def main():
    return render_template("index.html")

@app.route("/comparison.html")
def comparison():
    return render_template("comparison.html")

@app.route("/index.html")
def home():
    return render_template("index.html")

@app.route("/crimedescriptions.html")
def wordcloud():
    return render_template("crimedescriptions.html")

if __name__ == '__main__':
    app.run(debug=True)

