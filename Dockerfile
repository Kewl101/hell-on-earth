FROM arshsisodiya/helioskirepo:heroku

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt
RUN apt -qq update && apt upgrade -y && apt -qq install -y qbittorrent-nox
CMD ["bash", "start.sh"]
