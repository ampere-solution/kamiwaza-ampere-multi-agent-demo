** HOW TO BUILD and RUN KAMIWAZA **
Prior to build and run the demo, you need 3 things:
- "Brave API Key". Get a free key from https://brave.com/search/api/ and replace it in the section of "BRAVE_API_KEY" in the Dockerfile. This will allow our LLM agents to search the web, such as for research workflows
- Add huggingface token, which can apply from here:https://huggingface.co/settings/tokens.  vim ~/.ssh/hf_access.tok    and add your huggingface token.
- Make sure to add these Ampere AI models in your models directory at any location.  Then update that location in the run-app.sh accordingly at '-v /mnt/workspace/data/models:/data/models \'.  In  this case my models directory mapped to '/mnt/workspace/data/models'.  

- Here's the list of Ampere AI models you will need for this demo which you can download from Huggingface.
  -rw-r--r-- 1 ampere ampere  7682064096 Feb  3 02:16 deepseek-r1-distill-qwen-7b-Q8R16.gguf
-rw-r--r-- 1 ampere ampere  8101635456 Feb  3 02:32 llama-3.1-8b-instruct-Q8R16.gguf
-rw-r--r-- 1 root   root    1267867296 Feb  5 23:47 Llama-3.2-1B-Instruct-Q8R16.gguf
-rw-r--r-- 1 ampere ampere  2057224256 Feb  8 16:37 Llama-3.2-3B-Instruct-Q4_K_4.gguf
-rw-r--r-- 1 ampere ampere 23765699680 Feb  3 03:16 Mistral-Small-3.2-24B-Instruct-2506-Q8R16.gguf
-rw-r--r-- 1 ampere ampere 14778831040 Feb  3 03:44 phi-4-Q8R16.gguf
-rw-r--r-- 1 ampere ampere  7682064800 Feb  3 03:59 Qwen2.5-7B-Instruct-Q8R16.gguf
-rw-r--r-- 1 ampere ampere 14890915616 Feb  3 04:28 Qwen3-14B-Q8R16.gguf
-rw-r--r-- 1 ampere ampere  2053935264 Feb  3 04:03 Qwen3-1.7B-Q8R16.gguf
-rw-r--r-- 1 ampere ampere 18947936192 Feb  3 05:10 Qwen3-30B-A3B-Q4_K_4.gguf
-rw-r--r-- 1 ampere ampere 31041398720 Feb  3 05:57 Qwen3-30B-A3B-Q8R16.gguf
-rw-r--r-- 1 ampere ampere 33026077504 Feb  3 06:42 Qwen3-32B-Q8R16.gguf
-rw-r--r-- 1 ampere ampere  4060437184 Feb  3 06:46 Qwen3-4B-Q8R16.gguf
-rw-r--r-- 1 ampere ampere  8261604576 Feb  3 06:56 Qwen3-8B-Q8R16.gguf  

- To build, run the build-app.sh
- To run, run the run-app.sh
- Once the demo run, access to the demo docker container: 'docker exec -it kamiwaza-ampere-multi-agent-demo bash'
- Check your 'manage_llm_servers.sh' in the 'outcome-a872-Ampere_MultiAgentDemo' directory to make sure LOCAL_MODELS and HF_TOKEN are setting correctly.  
$ cat manage_llm_servers.sh 
#!/bin/bash
# Global configuration
LOCAL_MODELS_PATH="/data/models"
CONTAINER_MODELS_PATH="/llm/models"
LOCAL_BENCHSUITE_PATH="/data/benchsuite"
CONTAINER_BENCHSUITE_PATH="/llm/benchsuite"
HF_TOKEN=$(cat /home/ampere/.ssh/hf_access.tok)
HOST_IP="0.0.0.0"
CONFIG_FILE="models_config.json"

- Run this command in 'outcome-a872-Ampere_MultiAgentDemo' to start all the llm-servers: 
bash manage_llm_servers.sh start

- Check status:  'docker ps' should see all the running llm-servers.


