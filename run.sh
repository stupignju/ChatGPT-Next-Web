#!/bin/bash

ollama pull qwen:7b
ollama pull gemma:2b
nohup ollama serve >ollama.serve.log &
yarn install
nohup yarn dev >front.serve.log &
