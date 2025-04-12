<h1>Homework 5-4 </h1> <br>
<br>
<br>

<h2>Задача 1</h2><br>
<br>
Вам необходимо поднять в докере и связать между собой:<br>

```
elasticsearch (hot и warm ноды);<br>
logstash;<br>
kibana;<br>
filebeat.<br>
```

Logstash следует сконфигурировать для приёма по tcp json-сообщений.<br>
<br>
Filebeat следует сконфигурировать для отправки логов docker вашей системы в logstash.<br>
<br>
В директории help находится манифест docker-compose и конфигурации filebeat/logstash для быстрого выполнения этого задания.<br>
<br>
Результатом выполнения задания должны быть:<br>
<br>
скриншот docker ps через 5 минут после старта всех контейнеров (их должно быть 5);<br>
скриншот интерфейса kibana;<br>
docker-compose манифест (если вы не использовали директорию help);<br>
ваши yml-конфигурации для стека (если вы не использовали директорию help).<br>
<br><br>

![docker up containers](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%205-4/0.png)

![kibana](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%205-4/1.png)

<br><br>



<h2>Задача 2</h2><br>
<br>
Перейдите в меню создания index-patterns в kibana и создайте несколько index-patterns из имеющихся.<br>
<br>
Перейдите в меню просмотра логов в kibana (Discover) и самостоятельно изучите, как отображаются логи и как производить поиск по логам.<br>
<br>
В манифесте директории help также приведенно dummy-приложение, которое генерирует рандомные события в stdout-контейнера. Эти логи должны порождать индекс logstash-* в elasticsearch. Если этого индекса нет — воспользуйтесь советами и источниками из раздела «Дополнительные ссылки» этого задания.<br>
<br><br>

![kibana](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%205-4/2.png)

![kibana](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%205-4/3.png)

![kibana](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%205-4/4.png)

![kibana](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%205-4/5.png)
