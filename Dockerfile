FROM ubuntu:14.04

COPY meshmixer_*_amd64.deb /
RUN apt-get update && dpkg -i /meshmixer_*_amd64.deb || apt-get install -y -f

# Replace 1000 with your user / group id
RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer/Documents && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

USER developer
ENV HOME /home/developer
ENV QT_X11_NO_MITSHM 1
CMD /usr/bin/meshmixer
