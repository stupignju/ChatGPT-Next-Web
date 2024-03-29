#!/bin/bash
source ~/.bashrc

ollama pull qwen:7b
ollama pull gemma:2b
nohup ollama serve >ollama.serve.log &

nvm install node
npm install --global yarn
yarn install
nohup yarn dev >front.serve.log &
