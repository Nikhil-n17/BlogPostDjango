FROM python
COPY . /root/
WORKDIR /root/
# RUN ["ln" ,"-sf" ,"/bin/sh" , "/bin/bash"]
SHELL ["/bin/bash", "-c"]
RUN pip3 install -r requirement.txt 
# CMD python3 manage.py runserver 0.0.0.0:8080
# use docker --env-file dev.env to set env varilables 
CMD python3 manage.py migrate && python3 manage.py runserver 0.0.0.0:8080
