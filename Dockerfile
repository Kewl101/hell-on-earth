FROM arshsisodiya/helioskirepo:public

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
RUN apt -qq update && apt upgrade -y && apt -qq install -y qbittorrent-nox
COPY . .

CMD ["bash", "start.sh"]
