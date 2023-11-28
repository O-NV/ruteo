FROM postgis/postgis:latest

RUN apt-get update && apt-get install -y \
    postgresql-16-pgrouting \
    python3 \
    python3-pip \
    cron \
    procps

RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY . .

RUN pip3 install -r requirements.txt

RUN chmod +x /ejecutar_scripts.sh

# RUN echo "@reboot /ejecutar_scripts.sh" | crontab -
RUN echo "57 3 * * * ejecutar_scripts.sh" | crontab -
