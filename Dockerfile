# FROM docker.io/pytorch/pytorch:1.9.1-cuda11.1-cudnn8-runtime
FROM docker.io/python:3.7.17

WORKDIR /DeepAFx-ST

ENTRYPOINT ["python", "-m", "scripts.process", "-i", "examples/voice_raw.wav", "-r", "examples/voice_produced.wav", "-c", "checkpoints/style/jamendo/autodiff/lightning_logs/version_0/checkpoints/epoch=362-step=1210241-val-jamendo-autodiff.ckpt"]

COPY . /DeepAFx-ST

RUN apt-get install gcc
RUN pip install -r requirements.txt
RUN export PYTHONPATH=.
