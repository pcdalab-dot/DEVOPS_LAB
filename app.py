from flask import Flask, request, jsonify
from textblob import TextBlob
import numpy as np
import pandas as pd

app = Flask(__name__)

# Home route
@app.route('/')
def home():
return "Smart Text Analyzer Running!"

# POST API (original functionality)
@app.route('/analyze', methods=['POST'])
def analyze():
data = request.json
text = data.get("text", "")

# Sentiment Analysis
blob = TextBlob(text)
sentiment = blob.sentiment.polarity

# NumPy processing
arr = np.array([len(text), sentiment])

# Pandas DataFrame
df = pd.DataFrame({
"Text Length": [len(text)],
"Sentiment": [sentiment]
})

return jsonify({
"sentiment": sentiment,
"analysis": df.to_dict()
})

@app.route('/test')
def test():
text = "Docker is awesome and very powerful!"

# Sentiment Analysis
blob = TextBlob(text)
sentiment = blob.sentiment.polarity

return f"""
<h2>Smart Text Analyzer Test</h2>
<p><b>Input Text:</b> {text}</p>
<p><b>Sentiment Score:</b> {sentiment}</p>
"""

if __name__ == '__main__':
app.run(host='0.0.0.0', port=5000)