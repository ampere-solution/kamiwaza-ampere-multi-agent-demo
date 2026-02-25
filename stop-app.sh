# Prior to build and run the demo, you need 3 things:
#- "Brave API Key". Get a free key from https://brave.com/search/api/ and replace it in the section of "BRAVE_API_KEY" in the Dockerfile. This will allow our LLM agents to search the web, such as for research workflows
#- Add huggingface token, which can apply from here:https://huggingface.co/settings/tokens.  vim ~/.ssh/hf_access.tok    and add your huggingface token.
#- Make sure to add these Ampere AI models in your models directory at any location.  Then update that location in the run-app.sh accordingly at '-v /mnt/workspace/data/models:/data/models \'.  In  this case my models directory mapped to '/mnt/workspace/data/models'.  

#docker run -d -p 16969:16969  \
#-p 8001:8001 -p 8002:8002 -p 8003:8003 -p 8004:8004 -p 8005:8005 \
#-v /mnt/workspace/data/models:/data/models \
#--privileged \
#--ipc host \
#--network host \
#-v /home/ampere/.ssh/hf_access.tok:/home/ampere/.ssh/hf_access.tok \
#--name kamiwaza-ampere-multi-agent-demo tinguyen2024/kamiwaza-ampere-multi-agent-and-datasources-demo


docker compose down
