#!/bin/sh
docker build -t rasa-ui .
docker run --network chatbot -e "rasanluendpoint=http://docker_chatbot-nlu_1:5000" -e "rasacoreendpoint=http://docker_chatbot-core_1/webhooks/rest/" -itd -p 5001:5001 rasa-ui
