from flask import Flask, jsonify
from config import PORT, HOST

app = Flask(__name__)


@app.route("/health", methods=["GET"])
def health():
    return jsonify({"status": "Python service is running"}), 200


if __name__ == "__main__":
    app.run(host=HOST, port=PORT)
