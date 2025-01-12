<h1>Homework 1-3</h1> <br>
<br>
<br>
<h2>Задача 1</h2><br>
<br>
Зарегистрировался в докер хаб и создал репозиторий https://hub.docker.com/repository/docker/4ivan/custom-nginx <br>
Затем скачал к себе образ nginx, запустил docker container и изменил в нем страничку index.html <br>
Для замены страницы использовал: cp index.html aac9755eea9b:/usr/share/nginx/html/index.html<br>
Сделал докер коммит и отправил измененный контейнер в свой репозиторий <br>
https://hub.docker.com/repository/docker/4ivan/custom-nginx/general <br>
docker pull 4ivan/custom-nginx<br>
<br>
<br>
<h2>Задача 2</h2><br>
<br>
Для запуска контейнера:  docker run --name lastname-custom-nginx-t2 -p 8080:80 -e TERM=xterm -d custom-nginx-t2<br>

![Запуск контейнера](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%201-3/%D0%97%D0%B0%D0%BF%D1%83%D1%81%D0%BA%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%B0.png)

<br>
Команда для переименования контейнера:<br> 
docker rename my_container my_new_container<br>
<br>
<br>
date +"%d-%m-%Y %T.%N %Z" ; sleep 0.150 ; docker ps ; ss -tlpn | grep 127.0.0.1:8080 ; docker logs custom-nginx-t2 -n1 ; docker exec -it custom-nginx-t2 base64 /usr/share/nginx/html/index.html <br>
<br>
сurl 127.0.0.1:8080<br>
<br>

```
<html>
<head> Hey, Netology</head>
<body>
 <h1>I will be DevOps Engineer !</h1>
</body>
</html>
```

 <br>
 <br>
 
![Результат в браузере](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%201-3/%D0%A0%D0%B5%D0%B7%D1%83%D0%BB%D1%8C%D1%82%D0%B0%D1%82%20%D0%B2%20%D0%B1%D1%80%D0%B0%D1%83%D0%B7%D0%B5%D1%80%D0%B5.png)

<br>
<br>
<h2>Задача 3</h2><br>
<br>
Для подключения к к стандартному потоку ввода/вывода/ошибок контейнера необходимо использовать команду: <br>
docker attach ichetverkin-custom-nginx-t2<br>
<br>
ctrl + c<br>
docker ps --help       - выводит следующее:    -a, --all             Show all containers (default shows just running)<br>
Была выведена информация и о запущенных контейнерах и об образах   (результат сумма вывода команд: "docker ps"  и  "docker images")<br>
<br>
Контейер остановился т.к. получил сигнал на уничтожение SIGINT forcefully exiting <br>
<br>
docker start 06dbac9c3ad7<br>
<br>
Чтобы контейнер не останавливался нужно отключить перенаправление сигналов:<br>
docker attach --sig-proxy=false ichetverkin-custom-nginx-t2<br>
Выход три раза ctrl + c<br>
<br>
Подключаемся к контейнеру для установки текстовых редакторов и изменения порта nginx: <br>
docker exec -it 06dbac9c3ad7 /bin/bash<br>
apt update<br>
apt install nano vim<br>
Заменил на 81 порт<br>
oot@06dbac9c3ad7:/# curl http://127.0.0.1:80 <br>
curl: (7) Failed to connect to 127.0.0.1 port 80 after 0 ms: Connection refused<br>
root@06dbac9c3ad7:/#  curl http://127.0.0.1:81<br>

```
<html>
<head> Hey, Netology</head>
<body>
 <h1>I will be DevOps Engineer !</h1>
</body>
</html>
```

<br>
Очевидно, что проблема связана с параметрами заданными при старте контейнера, порт 80 остался в настройках <br>
docker ps<br>
CONTAINER ID   IMAGE             COMMAND                  CREATED          STATUS         PORTS                                     NAMES <br>
06dbac9c3ad7   custom-nginx-t2   "/docker-entrypoint.…"   48 minutes ago   Up 3 minutes   0.0.0.0:8080->80/tcp, [::]:8080->80/tcp   ichetverkin-custom-nginx-t2
<br>
Меняем порт в настройках контейнера <br>
docker stop 06dbac9c3ad7<br>
systemctl stop docker<br>
/var/lib/docker/containers/<ID>/<br>
config.v2.json тут редактируем параметры "PortBindings"<br>
hostconfig.json тут редактируем параметры "ExposedPorts"<br>
<br>
docker ps<br>
CONTAINER ID   IMAGE             COMMAND                  CREATED             STATUS         PORTS                                     NAMES<br>
06dbac9c3ad7   custom-nginx-t2   "/docker-entrypoint.…"   About an hour ago   Up 3 seconds   0.0.0.0:8080->81/tcp, [::]:8080->81/tcp   ichetverkin-custom-nginx-t2 <br>
<br>
Страница в браузере и по курл снова отображается.<br>
<br>
Для удаления запущенного контенейра:<br>
docker rm -f $(docker ps -a -q)<br>
