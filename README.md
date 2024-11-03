# Psypher: An Emotionally Intelligent Chatbot

Psypher is a chatbot designed to provide emotional support and mental health information through conversations. It uses a combination of Natural Language Processing (NLP) and machine learning to understand user input and respond with empathy, helpful advice, and relevant facts.

# Technical Overview:

## Data Foundation:
Psypher learns from a structured JSON file (intents.json) containing various conversational patterns (user inputs) tagged with their corresponding intent (e.g., 'greeting', 'sad', 'stressed', 'fact-1', 'fact-2' etc.).
The intents are then paired with suitable responses that the chatbot can use.

## Preprocessing:
User input is cleaned and converted into a format that the machine learning model can understand.
The Keras Tokenizer converts words into numerical sequences, and padding ensures that all inputs are of the same length.

## Machine Learning Model:
Psypher employs a deep learning model using Long Short-Term Memory (LSTM) networks. LSTMs are well-suited for understanding context and dependencies in text.
The model is trained to predict the intent behind the user's message based on the input sequences.

## Generating Responses:
Once the intent is identified, the chatbot selects a relevant response from the JSON file.
The generate_answer function handles this response generation process.

## Key Features:
Emotional Intelligence: Psypher is trained to recognize and respond to a wide range of emotions expressed in the user's input.
Mental Health Support: The chatbot provides basic information, coping strategies, and encourages users to seek professional help when needed.
Customization: The intents.json file can be easily expanded or modified to tailor the chatbot's knowledge and responses to specific needs.
Accuracy: The deep learning model, combined with proper training data, achieves a high level of accuracy in intent recognition and response generation.

## How to Use:
Run the Python script: The provided code will launch Psypher in your terminal.
Start chatting: Type your messages as you would with a human.
Exit: To end the conversation, type quit, exit, bye, or q.
Disclaimer: Psypher is not a substitute for professional medical advice. It is meant to offer support and information, but users should always consult a healthcare provider for serious concerns.

## Possible Enhancements:
Integration with mental health resources: Provide links to helplines, therapists, or support groups.
Personalization: Tailor responses based on user history and preferences.
Multi-language support: Enable communication in multiple languages.
Deployment: Make the chatbot accessible through a website, messaging app, or other platforms.
Let me know if you'd like any part of this description modified or expanded further!
