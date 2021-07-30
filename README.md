# SinoPac_Trade
SinoPac 永豐金證券期貨 Python API (Shioaji)

## Requirement
* Docker Desktop 3.5.2 (Windows 10)
* Docker 20.10.7
* Ubuntu 18.04 x64
* Python 3.7.4 (shioaji 0.3.2.dev9 requires Python 3.7)
* Shioaji v0.3.2.dev9 (2021-06-22)

## Installation steps
Install Docker Desktop on Windows
[https://docs.docker.com/docker-for-windows/install/](https://docs.docker.com/docker-for-windows/install/)

Install Git 2.32.0
[https://git-scm.com/downloads](https://git-scm.com/downloads)

Open Windows PowerShell
```bash
PS D:\workspace> git clone git@github.com:chuangtc/SinoPac_Trade.git
PS D:\workspace> cd SinoPac_Trade
PS D:\workspace\SinoPac_Trade> docker build . -t sinotrade:3.7
PS D:\workspace\SinoPac_Trade> docker run -p 8888:8888 sinotrade:3.7
```
## Find the token in the output terminal

## Open browser and type in the following url
```bash
http://localhost:8888/
```
## Reference
[https://github.com/Sinotrade/Shioaji](https://github.com/Sinotrade/Shioaji)