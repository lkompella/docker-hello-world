from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def hello():
    # Get the instance number from an environment variable
    instance_number = os.environ.get("INSTANCE_NUMBER", "Unknown")
    return f"Hello from instance {instance_number}!\n"

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=5000) # Host 0.0.0.0 for container accessibility