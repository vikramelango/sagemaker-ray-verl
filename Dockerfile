FROM 763104351884.dkr.ecr.us-east-1.amazonaws.com/pytorch-training:2.6.0-gpu-py312-cu126-ubuntu22.04-sagemaker

# RUN python --version

COPY src /opt/ml/code
WORKDIR /opt/ml/code
# RUN ls -l

RUN python -m pip install --upgrade pip
RUN pip install verl
RUN pip install vllm==0.8.4
RUN pip install sglang==0.4.6.post5
RUN pip install wandb 
RUN pip install boto3
RUN pip install --upgrade huggingface_hub
RUN pip install hf_xet

# RUN pip show torch
# RUN pip show vllm 
# RUN pip show torchvision
# RUN pip show flash_attn
# RUN python --version
