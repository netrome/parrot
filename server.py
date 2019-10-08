import flask

app = flask.Flask(__name__)

data = None

@app.route("/yo/")
def yo():
    return f"<h1>Hello Derpy McDerpface</h1><p>{data}</p>"


@app.route("/post/", methods=["GET", "POST"])
def post():
    global data
    data = flask.request.data
    return "Posted data"

