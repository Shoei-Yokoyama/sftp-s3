FROM atmoz/sftp:latest

COPY resource/users.conf /etc/sftp/users.conf
COPY resource/upload.incron /upload.incron
COPY resource/init.sh /init.sh
COPY resource/upload.sh /upload.sh
COPY resource/refresh.cron /refresh.cron

RUN apt-get update && \
    apt-get install -y cron incron vim curl unzip sudo && \
    echo root >> /etc/incron.allow && \
    incrontab /upload.incron && \
    incrontab -d && \
    crontab /refresh.cron && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install

CMD [ "/sbin/init" ]
