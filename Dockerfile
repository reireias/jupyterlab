FROM python:3-buster

RUN pip install jupyterlab

WORKDIR /opt

CMD ["jupyter-lab", "--ip=0.0.0.0", "--allow-root", "--port=8080", "--LabApp.token=''"]
