FROM ubuntu:16.04
RUN apt-get update -y && apt-get -y install nodejs npm git

EXPOSE 3000

RUN mkdir -p /usr/src/app
RUN cd /usr/src/app

COPY package.json package.json

RUN git clone <<GIT-URL>>
RUN cp . /usr/src/app
CMD ["npm", "start"]
