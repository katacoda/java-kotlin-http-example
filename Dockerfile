FROM ocelotuproar/alpine-kotlin:latest
EXPOSE 3000
WORKDIR /src

COPY . /src
RUN gradle distZip && unzip /src/build/distributions/src.zip

CMD ["/src/src/bin/src"]

