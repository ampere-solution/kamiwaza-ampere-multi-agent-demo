# HOW TO RUN KAMIWAZA

Follow these steps to configure and launch the Kamiwaza Ampere Multi-Agent Demo.

## 1. Prerequisites

Before deploying the demo, ensure you have the following three items configured:

### A. Brave API Key
Get a free key from the [Brave Search API](https://brave.com/search/api/).
*   **Action**: Replace the value in the `BRAVE_API_KEY` section of your `docker-compose.yaml`. 
*   **Purpose**: This allows LLM agents to perform web searches for research workflows.

### B. Hugging Face Token
Apply for a token at [Hugging Face Settings](https://huggingface.cosettings/tokens).
*   **Action**: Create the token file locally:
    ```bash
    vim ~/.ssh/hf_access.tok
    ```
    Paste your token into this file and save it.

### C. Ampere AI Models
Download the following models from [Hugging Face](https://huggingface.co) and place them in a local directory (e.g., `/mnt/workspace/data/models`).

**Required Model List:**
* `deepseek-r1-distill-qwen-7b-Q8R16.gguf` (7.6 GB)
* `llama-3.1-8b-instruct-Q8R16.gguf` (8.1 GB)
* `Llama-3.2-1B-Instruct-Q8R16.gguf` (1.2 GB)
* `Llama-3.2-3B-Instruct-Q4_K_4.gguf` (2.0 GB)
* `Mistral-Small-3.2-24B-Instruct-2506-Q8R16.gguf` (23.7 GB)
* `phi-4-Q8R16.gguf` (14.7 GB)
* `Qwen2.5-7B-Instruct-Q8R16.gguf` (7.6 GB)
* `Qwen3-14B-Q8R16.gguf` (14.8 GB)
* `Qwen3-1.7B-Q8R16.gguf` (2.0 GB)
* `Qwen3-30B-A3B-Q4_K_4.gguf` (18.9 GB)
* `Qwen3-30B-A3B-Q8R16.gguf` (31.0 GB)
* `Qwen3-32B-Q8R16.gguf` (33.0 GB)
* `Qwen3-4B-Q8R16.gguf` (4.0 GB)
* `Qwen3-8B-Q8R16.gguf` (8.2 GB)

---
## 2. Git clone the Demo
```bash
git clone https://github.com/ampere-solution/kamiwaza-ampere-multi-agent-demo.git
```
> **Note**: Update the volume mapping in `docker-compose.yaml` to match your local path:  
> `- /mnt/workspace/data/models:/data/models`

## 3. Run and Deploy the Demo

### Step 1: Run the Application
```bash
bash run-app.sh
```

### Step 2: Setup the Application
```bash
docker exec -it kamiwaza-ampere-multi-agent-demo bash
```

```bash
# cd outcome-a872-Ampere_MultiAgentDemo/
# bash manage_llm_servers.sh start
# docker ps
CONTAINER ID   IMAGE                                COMMAND                  CREATED         STATUS                           PORTS                                         NAMES
597191c80489   amperecomputingai/llama.cpp:latest   "/llm/llama-server -…"   3 seconds ago   Up 1 second (health: starting)   0.0.0.0:8022->8022/tcp, [::]:8022->8022/tcp   llama22
29690ac68196   amperecomputingai/llama.cpp:latest   "/llm/llama-server -…"   3 seconds ago   Up 1 second (health: starting)   0.0.0.0:8017->8017/tcp, [::]:8017->8017/tcp   llama17
75bfc2bfa1ff   amperecomputingai/llama.cpp:latest   "/llm/llama-server -…"   3 seconds ago   Up 1 second (health: starting)   0.0.0.0:8021->8021/tcp, [::]:8021->8021/tcp   llama21
2cdb680601f4   amperecomputingai/llama.cpp:latest   "/llm/llama-server -…"   3 seconds ago   Up 1 second (health: starting)   0.0.0.0:8019->8019/tcp, [::]:8019->8019/tcp   llama19
6b89fb20d4ea   amperecomputingai/llama.cpp:latest   "/llm/llama-server -…"   3 seconds ago   Up 1 second (health: starting)   0.0.0.0:8016->8016/tcp, [::]:8016->8016/tcp   llama16
666348a80c56   amperecomputingai/llama.cpp:latest   "/llm/llama-server -…"   3 seconds ago   Up 1 second (health: starting)   0.0.0.0:8012->8012/tcp, [::]:8012->8012/tcp   llama12
796cab524b4c   amperecomputingai/llama.cpp:latest   "/llm/llama-server -…"   3 seconds ago   Up 1 second (health: starting)   0.0.0.0:8014->8014/tcp, [::]:8014->8014/tcp   llama14
49f6ac6e0280   amperecomputingai/llama.cpp:latest   "/llm/llama-server -…"   3 seconds ago   Up 1 second (health: starting)   0.0.0.0:8013->8013/tcp, [::]:8013->8013/tcp   llama13
cb3f42a5e974   amperecomputingai/llama.cpp:latest   "/llm/llama-server -…"   3 seconds ago   Up 1 second (health: starting)   0.0.0.0:8020->8020/tcp, [::]:8020->8020/tcp   llama20
a39a083ca336   amperecomputingai/llama.cpp:latest   "/llm/llama-server -…"   3 seconds ago   Up 1 second (health: starting)   0.0.0.0:8011->8011/tcp, [::]:8011->8011/tcp   llama11
48819e22183e   amperecomputingai/llama.cpp:latest   "/llm/llama-server -…"   3 seconds ago   Up 1 second (health: starting)   0.0.0.0:8018->8018/tcp, [::]:8018->8018/tcp   llama18
e606661b7da0   amperecomputingai/llama.cpp:latest   "/llm/llama-server -…"   3 seconds ago   Up 1 second (health: starting)   0.0.0.0:8015->8015/tcp, [::]:8015->8015/tcp   llama15
```
> **Note**: Make sure that you will see all the llm-servers running!

### Step 3: Stop the Application
```bash
bash stop-app.sh
```






