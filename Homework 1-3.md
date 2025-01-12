<h1>Homework 1-3</h1> <br>
<br>
<br>
<h2>Задача 1</h2><br>
<br>
Зарегистрировался в докер хаб и создал репозиторий <br>
<b> https://hub.docker.com/repository/docker/4ivan/custom-nginx </b> <br>
Затем скачал к себе образ nginx, запустил docker container и изменил в нем страничку index.html <br>
Для замены страницы использовал: <br>

```
cp index.html aac9755eea9b:/usr/share/nginx/html/index.html
```

Сделал докер коммит и отправил измененный контейнер в свой репозиторий <br>
<b> https://hub.docker.com/repository/docker/4ivan/custom-nginx/general </b><br>
Теперь скачать мой образ можно при помощи команды:<br>

```
docker pull 4ivan/custom-nginx
```

<br>
<br>
<h2>Задача 2</h2><br>
<br>
Для запуска контейнера: <br> 

```
docker run --name lastname-custom-nginx-t2 -p 8080:80 -e TERM=xterm -d custom-nginx-t2
```

![Запуск контейнера](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%201-3/%D0%97%D0%B0%D0%BF%D1%83%D1%81%D0%BA%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%B0.png)

<br>
Команда для переименования контейнера:<br> 

```
docker rename my_container my_new_container
```

<br>
<br>
Выполнил команды:<br>

```
date +"%d-%m-%Y %T.%N %Z" ; sleep 0.150 ; docker ps ; ss -tlpn | grep 127.0.0.1:8080 ; docker logs custom-nginx-t2 -n1 ; docker exec -it custom-nginx-t2 base64 /usr/share/nginx/html/index.html
```

<br>

```
сurl 127.0.0.1:8080

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

```
docker attach ichetverkin-custom-nginx-t2
```

<br>
Прожал как по заданию:<br>

```
ctrl + c
docker ps -a
```

Решил проверить описание ключа, который присутствует в последней команде.<br>
Описание любой команды можно найти используя man или --help: <br>

```
docker ps --help     
```
  
- выводит следующее:    -a, --all             Show all containers (default shows just running)<br>

Соответственно команда "docker ps -a" никак не повлияла на остановку контейнера т.е. контейнер остановлися после введения команды ctrl + c, а команда "docker ps -a" вывела информацию и о запущенных контейнерах и об образах<br>
<br>
Контейер остановился после применения команды ctrl + c т.к. получил сигнал на уничтожение SIGINT forcefully exiting <br>
Запустил контейнер: <br>

```
docker start 06dbac9c3ad7
```

<br>
Чтобы контейнер не останавливался нужно отключить перенаправление сигналов, пример команды:<br>

```
docker attach --sig-proxy=false ichetverkin-custom-nginx-t2
```

Для отключения от потоков контейнера необходимо три раза ввести: ctrl + c<br>
<br>
Подключаемся к контейнеру для установки текстовых редакторов и изменения порта nginx: <br>

```
docker exec -it 06dbac9c3ad7 /bin/bash
apt update
apt install nano vim
```

<br>
Заменил значение порта в конфиг файле nginx с 80 на 81<br>
Проверил вывод команды curl внутри контейнера:<br>

```
root@06dbac9c3ad7:/# curl http://127.0.0.1:80
curl: (7) Failed to connect to 127.0.0.1 port 80 after 0 ms: Connection refused
root@06dbac9c3ad7:/#  curl http://127.0.0.1:81
<html>
<head> Hey, Netology</head>
<body>
 <h1>I will be DevOps Engineer !</h1>
</body>
</html>
```

<br>
Очевидно, что проблема связана с параметрами заданными при старте контейнера, порт 80 остался в настройках контейнера <br>
docker ps<br>

```
CONTAINER ID   IMAGE             COMMAND                  CREATED          STATUS         PORTS                                     NAMES
06dbac9c3ad7   custom-nginx-t2   "/docker-entrypoint.…"   48 minutes ago   Up 3 minutes   0.0.0.0:8080->80/tcp, [::]:8080->80/tcp   ichetverkin-custom-nginx-t2
```

<br>
Нам нужно поменять порт в конфиг файлах контейнера. <br>
Для этого выполняем остановку контейнера и сервиса докер: <br>

```
docker stop 06dbac9c3ad7
systemctl stop docker
```
Заходим в директорию:<br>

```
/var/lib/docker/containers/<ID>/
```

<b>config.v2.json</b> тут редактируем параметры "PortBindings"<br>
<b>hostconfig.json</b> тут редактируем параметры "ExposedPorts"<br>
<br>
После внесенных изменений запускаем докер, стартуем наш контейнер и делаем docker ps<br>
 
```
CONTAINER ID   IMAGE             COMMAND                  CREATED             STATUS         PORTS                                     NAMES
06dbac9c3ad7   custom-nginx-t2   "/docker-entrypoint.…"   About an hour ago   Up 3 seconds   0.0.0.0:8080->81/tcp, [::]:8080->81/tcp   ichetverkin-custom-nginx-t2
```

Страница и в браузере и по curl снова отображается.<br>
<br>
Для удаления запущенного контенейра:<br>
 
```
docker rm -f $(docker ps -a -q)
```

<br>
<br>
<h2>Задача 4</h2><br>
<br>

```
docker pull centos
docker pull debian
mkdir /home/user7/Z4

docker run -t -i -v -v /home/user7/Z4:/data  centos /bin/bash
```
