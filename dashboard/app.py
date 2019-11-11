from flask import Flask, render_template, url_for


app = Flask(__name__)


@app.route("/")
@app.route("/home/")
def home():
    return render_template("index.html", page="home")


@app.route("/about/")
def about():
    return render_template("index.html", page="about", home=url_for("home"))


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5001)