FROM ubuntu:18.04
MAINTAINER jasontgi
ENV PATH /opt/conda/bin:$PATH
RUN apt update && apt install -y openssl make git gcc g++ wget bzip2 ca-certificates curl
RUN apt-get install -y python3.7
RUN ln -s python3.7 /usr/bin/python3 
RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-4.7.12.1-Linux-x86_64.sh -O ~/miniconda.sh && \
    /bin/bash ~/miniconda.sh -b -p /opt/conda && \
    rm ~/miniconda.sh && \
    /opt/conda/bin/conda clean -tipsy && \
    ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh && \
    echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc && \
    echo "conda activate base" >> ~/.bashrc

RUN pip install shioaji
RUN conda install jupyterlab pandas -y
WORKDIR /home/work
RUN wget https://raw.githubusercontent.com/Sinotrade/Sinotrade.github.io/master/tutorial/shioaji_tutorial.ipynb
EXPOSE 8888

ENTRYPOINT [ "jupyter", "lab", "--allow-root", "--ip=0.0.0.0"]
