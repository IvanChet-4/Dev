<h1>Homework 5-3 </h1> <br>
<br>
<br>
Задание 1  <br>

Используя директорию help внутри этого домашнего задания, запустите связку prometheus-grafana.  <br>
Зайдите в веб-интерфейс grafana, используя авторизационные данные, указанные в манифесте docker-compose.  <br>
Подключите поднятый вами prometheus, как источник данных.  <br>
Решение домашнего задания — скриншот веб-интерфейса grafana со списком подключенных Datasource.  <br>
    
 <br><br>

![data source](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%205-3/1.png)

![main page](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%205-3/0.png)

![prometheus](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%205-3/2.png)

![metrics](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%205-3/3.png)

![viget](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%205-3/4.png)



Задание 2  <br>

Изучите самостоятельно ресурсы:  <br>

1. PromQL tutorial for beginners and humans.  <br>
2. Understanding Machine CPU usage.  <br>
3. Introduction to PromQL, the Prometheus query language.  <br>

Создайте Dashboard и в ней создайте Panels:  <br>

-утилизация CPU для nodeexporter (в процентах, 100-idle);  <br>
-CPULA 1/5/15;  <br>
-количество свободной оперативной памяти;  <br>
-количество места на файловой системе.  <br>

Для решения этого задания приведите promql-запросы для выдачи этих метрик, а также скриншот получившейся Dashboard.  <br>

 <br><br>
