from flask import Flask

app = Flask(__name__)

@app.route("/")
return "Success",200


if __name__ == "__main__":
    app.debug=True
    app.run(host='0.0.0.0', 5000)