FROM anasty17/mltb:dev

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD flask run -h 0.0.0.0 -p 5000 & /bin/bash start.sh
