FROM postgis/postgis:latest

RUN apt-get update && apt-get install -y \
    postgresql-16-pgrouting \
    python3 \
    python3-pip \
    cron

RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY . .

RUN pip3 install -r /scripts/requirements.txt

RUN chmod +x ejecutar_scripts.sh

RUN echo "0 2 * * * ejecutar_scripts.sh" | crontab -

VOLUME /data

CMD ["cron", "-f"]
