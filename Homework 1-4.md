<h1>Homework 1-4</h1> <br>
<br>
<br>
<h2>Задача 0</h2><br>
<br>
Переустановил docker compose<br>

![Удаление и установка docker compose](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%201-4/%D0%A3%D0%B4%D0%B0%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B8%20%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BA%D0%B0%20docker%20compose.png)


![Версия установленного docker compose](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%201-4/Версия%20установленного%20docker%20compose.png)

<br>
<h2>Задача 1</h2><br>
<br>
Сделал форк репозитория: <br>

![Форк](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%201-4/%D0%A4%D0%BE%D1%80%D0%BA.jpg)

<b> https://github.com/IvanChet-4/shvirtd-example-python/tree/main </b><br>
Создал в сделанном форке 5-ть файлов: Dockerfile.python, .dockerignore, .gitignore, compose.yaml, script.sh<br>
В gitignore добавил compose.yaml, script.sh, Dockerfile.python<br>

Заполнил Dockerfile.python:<br>

```
FROM python:3.9-slim

COPY requirements.txt /tmp/requirements.txt
RUN  pip install --no-cache-dir -r /tmp/requirements.txt

#COPY ./script.sh /script.sh
#RUN chmod +x /script.sh

COPY ./main.py /main.py
RUN chmod +x /main.py

WORKDIR /
CMD ["python", "main.py"]

```

<br>
<h2>Задача 3</h2><br>
<br>
Заполнил compose.yaml:<br>

```
version: '3.8'
include:
  - proxy.yaml

services:
  db:
    image: mysql:8
    container_name: db
    restart: always
    hostname: db
    networks: 
        backend:
          ipv4_address: 172.20.0.10
    ports: 
        - "3306:3306"
    volumes:
      - db_data:/var/lib/mysql
    environment:
      - MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}
      - MYSQL_DATABASE=${MYSQL_DATABASE}
      - MYSQL_USER=${MYSQL_USER}
      - MYSQL_PASSWORD=${MYSQL_PASSWORD}
      - MYSQL_ROOT_HOST="%" # all network


  web:
    build: 
      context: .
      dockerfile: Dockerfile.python
    container_name: web
    restart: always
    hostname: web
    networks: 
      backend:
        ipv4_address: 172.20.0.5
    ports:
      - "5000"
    volumes:
      - .:/app
    environment:
      - FLASK_ENV=development
      - DB_NAME=${MYSQL_DATABASE}
      - DB_USER=${MYSQL_USER}
      - DB_PASSWORD=${MYSQL_PASSWORD}
      - DB_HOST=db

networks:
  backend:
    driver: bridge
    ipam:
     config:
       - subnet: 172.20.0.0/24

volumes:
  db_data: {}
```

curl Запросы:<br>

![Запросы curl](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%201-4/%D0%97%D0%B0%D0%BF%D1%80%D0%BE%D1%81-%D0%BE%D1%82%D0%B2%D0%B5%D1%82.png)

Подключение к контейнеру с БД, подключение к БД:<br>

![Подключение к контейнеру с БД](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%201-4/exec%20in%20mysql.png)

Вывод значений из БД:<br>

![Вывод значений из БД](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%201-4/10%20limits.png)

<br>
<h2>Задача 4</h2><br>
<br>
Создал ВМ, настроил доступ по ssh. <br>
При настройке ключа столкнулся с тем, что у Яндекса есть определенные требования к наименованию ключа.<br>

![Создал ВМ и подключился по ssh](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%201-4/%D0%A1%D0%BE%D0%B7%D0%B4%D0%B0%D0%BB%20%D0%92%D0%9C%20%D0%B8%20%D0%BF%D0%BE%D0%B4%D0%BA%D0%BB%D1%8E%D1%87%D0%B8%D0%BB%D1%81%D1%8F%20%D0%BF%D0%BE%20ssh.png)

Запустил проект через sh <br>

![Запуск проекта на ВМ](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%201-4/%D0%97%D0%B0%D0%BF%D1%83%D1%81%D0%BA%20%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82%D0%B0%20%D0%BD%D0%B0%20%D0%92%D0%9C.png)

```
Код скрипта:

#!/bin/bash

# URL форк-репозитория
REPO_URL="https://github.com/IvanChet-4/shvirtd-example-python.git"

# Переходим в каталог /opt
cd /opt

# Скачиваем форк-репозиторий
if [ -d "shvirtd-example-python" ]; then
    echo "Репозиторий уже существует. Обновляем..."
    cd shvirtd-example-python
    git pull origin main  
else
    echo "Клонируем репозиторий..."
    git clone $REPO_URL
    cd shvirtd-example-python
fi

# Содержимое этих файлов добавил вручную т.к. они в gitignore и Dockerignore. В скрипте просто копируются в директорию с проектом.
cp /opt/Dockerfile.python /opt/shvirtd-example-python/Dockerfile.python
cp /opt/compose.yaml /opt/shvirtd-example-python/compose.yaml
cp /opt/.env /opt/shvirtd-example-python/.env

# Запускаем проект с помощью docker-compose
docker-compose up -d
```

Аналогично заданию 3 сделал curl запросы и вывел содержимое таблицы. <br> 
+ Проверил подключение через сервис https://check-host.net/check-http <br>

![Проверка http подключения для портов 80 и 8090](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%201-4/%D0%9F%D1%80%D0%BE%D0%B2%D0%B5%D1%80%D0%BA%D0%B0%20http%20%D0%BF%D0%BE%D0%B4%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B4%D0%BB%D1%8F%20%D0%BF%D0%BE%D1%80%D1%82%D0%BE%D0%B2%2080%20%D0%B8%208090.png)

![curl запросы на ВМ](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%201-4/curl%20%D0%B7%D0%B0%D0%BF%D1%80%D0%BE%D1%81%D1%8B%20%D0%BD%D0%B0%20%D0%92%D0%9C.png)

![Вывод таблицы на ВМ](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%201-4/%D0%92%D1%8B%D0%B2%D0%BE%D0%B4%20%D1%82%D0%B0%D0%B1%D0%BB%D0%B8%D1%86%D1%8B%20%D0%BD%D0%B0%20%D0%92%D0%9C.png)

<br>
<h2>Задача 6</h2><br>
<br>

Cкопировал бинарный файл /bin/terraform на свою локальную машину, используя dive и docker save. (он в tar архиве)<br>

```
docker pull hashicorp/terraform:latest
dive hashicorp/terraform:latest
docker save hashicorp/terraform:latest -o terraform.tar
```

![docker dive save](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%201-4/docker%20dive%20save.png)

![docker dive](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%201-4/docker%20dive.png)

![docker save](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%201-4/docker%20save.png)

<br>
<h2>Задача 6.1</h2><br>
<br>

Cкопировал бинарный файл /bin/terraform на свою локальную машину, используя docker cp <br>

```
docker run -d --name terraform hashicorp/terraform:latest
docker cp terraform:/bin/terraform ./terraform
```

![docker cp](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%201-4/docker%20cp.png)
