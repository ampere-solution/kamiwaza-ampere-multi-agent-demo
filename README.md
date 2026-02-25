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

### Step 1: Build the Application
```bash
bash run-app.sh
```
### Step 2: Stop the Application
```bash
bash stop-app.sh
```






