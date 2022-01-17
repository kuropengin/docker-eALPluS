FROM node:16-alpine

RUN apk update

RUN apk --update add tzdata && \ 
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \ 
    echo "Asia/Tokyo" >  /etc/timezone

RUN apk add git

RUN git clone https://github.com/kuropengin/eALPluS.git

WORKDIR /eALPluS

RUN npm install

CMD ["npm","start"] 