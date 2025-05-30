<h1>Homework 5-3 </h1> <br>
<br>
<br>
<h2>Задача 1</h2><br>

Используя директорию help внутри этого домашнего задания, запустите связку prometheus-grafana.  <br>
Зайдите в веб-интерфейс grafana, используя авторизационные данные, указанные в манифесте docker-compose.  <br>
Подключите поднятый вами prometheus, как источник данных.  <br>
Решение домашнего задания — скриншот веб-интерфейса grafana со списком подключенных Datasource.  <br>
 <br><br>
compose file:       https://github.com/IvanChet-4/Dev/blob/main/HW5-3/compose/docker-compose.yml  <br>
config prometheus:  https://github.com/IvanChet-4/Dev/blob/main/HW5-3/compose/prometheus/prometheus.yml  <br>
 <br><br>

![data source](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%205-3/1.png)  <br>

![docker ps](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%205-3/0_0.png)  <br>

![main page](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%205-3/0.png)  <br>

![prometheus](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%205-3/2.png)  <br>

![metrics](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%205-3/3.png)  <br>

![viget](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%205-3/4.png)  <br>



<h2>Задача 2</h2><br>

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
Запросы:  https://github.com/IvanChet-4/Dev/blob/main/HW5-3/compose/readme.md  <br>
<br><br>

![vigets om dashboard](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%205-3/5.png)  <br>

![vigets om dashboard](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%205-3/6.png)  <br>

![vigets om dashboard](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%205-3/7.png)  <br>


<h2>Задача 3</h2><br>


Создайте для каждой Dashboard подходящее правило alert — можно обратиться к первой лекции в блоке «Мониторинг».  <br>
В качестве решения задания приведите скриншот вашей итоговой Dashboard.  <br>
<br><br>

![dashboard](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%205-3/8.png)  <br>

![add telegram](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%205-3/9.png)  <br>

![viget](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%205-3/10.png)  <br>

![telegram notif](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%205-3/11.jpg)  <br>

![telegram notif](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%205-3/12.jpg)  <br>


<h2>Задача 4</h2><br>

Сохраните ваш Dashboard.Для этого перейдите в настройки Dashboard, выберите в боковом меню «JSON MODEL». Далее скопируйте отображаемое json-содержимое в отдельный файл и сохраните его.  <br>
В качестве решения задания приведите листинг этого файла.  <br>
<br><br>

JSON DASHBOARD:  https://github.com/IvanChet-4/Dev/blob/main/HW5-3/compose/dashboard.json   <br>
