#!/bin/bash
source ~/.bashrc

nohup ollama serve >ollama.serve.log &
ollama pull qwen:7b
ollama pull gemma:2b

yarn install
nohup yarn dev >front.serve.log &
