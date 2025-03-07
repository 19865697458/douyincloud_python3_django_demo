FROM python:3.11.11

MAINTAINER douyincloud

COPY ./ /opt/application

WORKDIR /opt/application

RUN pip3 install -r requirements.txt -i https://pypi.mirrors.ustc.edu.cn/simple --trusted-host=pypi.mirrors.ustc.edu.cn/simple
RUN chmod 777 run.sh

ENTRYPOINT ["/bin/sh", "/opt/application/run.sh"]
EXPOSE 8000
