FROM python:3-buster

RUN pip install \
    jupyterlab \
    jupyterlab_vim \
    pandas \
    matplotlib

COPY .jupyter /root/.jupyter

WORKDIR /opt

CMD ["jupyter-lab", "--ip=0.0.0.0", "--allow-root", "--port=8080", "--LabApp.token=''"]
