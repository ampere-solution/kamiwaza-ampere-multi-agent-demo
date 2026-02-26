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
> **Note**: Update the volume mapping for the models directory in `docker-compose.yaml` to match your local path:  
> `- /mnt/workspace/data/models:/data/models`

## 3. Run the Demo

### Step 1: Run the Application
```bash
bash run-app.sh
```

The demo is ready to at http://<ip address>:16969
<img width="1530" height="1158" alt="kamiwaza" src="https://github.com/user-attachments/assets/97535a7c-9c3c-49a5-a0a3-8ba0e1c32f4e" />

Agent Directory:
<img width="1497" height="1147" alt="Screenshot 2026-02-26 at 2 04 15 PM" src="https://github.com/user-attachments/assets/8234cd65-0485-4d75-b2f8-15569ef54f7d" />


Check the logs files at http://<ip address>:8004
<img width="1979" height="584" alt="Screenshot 2026-02-25 at 3 31 37 PM" src="https://github.com/user-attachments/assets/25fa3418-6433-4ef1-8fdd-7bd1df9e5a4a" />


### Step 2: Stop the Application
```bash
bash stop-app.sh
```






