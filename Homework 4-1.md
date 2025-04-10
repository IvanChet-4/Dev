<h1>Homework 4-1 </h1> <br>
<br>
<br>

<h2>Задача 1</h2><br>
<br>
Скриншоты запуска jira и БД с помощью docker compose; генерация ключа для триал лицензии с помощью случайной почты; активация и веб интерфейс jira <br>

![start compose-jira.yml](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-1/0.png)

![mail box](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-1/1.png)

![lisence code](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-1/2.png)

![jira web](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-1/3.png)

<br>
Необходимо создать собственные workflow для двух типов задач: bug и остальные типы задач. Задачи типа bug должны проходить жизненный цикл:
<br>
Open -> On reproduce.<br>
On reproduce -> Open, Done reproduce.<br>
Done reproduce -> On fix.<br>
On fix -> On reproduce, Done fix.<br>
Done fix -> On test.<br>
On test -> On fix, Done.<br>
Done -> Closed, Open.<br>

![scheme Bug](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-1/4.png)


<br>
Остальные задачи должны проходить по упрощённому workflow:<br>
<br>
Open -> On develop.<br>
On develop -> Open, Done develop.<br>
Done develop -> On test.<br>
On test -> On develop, Done.<br>
Done -> Closed, Open.<br>

![scheme other](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-1/5.png)

<br>
Что нужно сделать<br>
Создайте задачу с типом bug, попытайтесь провести его по всему workflow до Done.<br>
Создайте задачу с типом epic, к ней привяжите несколько задач с типом task, проведите их по всему workflow до Done.<br>
При проведении обеих задач по статусам используйте kanban.<br>
Верните задачи в статус Open.<br>
Перейдите в Scrum, запланируйте новый спринт, состоящий из задач эпика и одного бага, стартуйте спринт, проведите задачи до состояния Closed. Закройте спринт.<br>
Если всё отработалось в рамках ожидания — выгрузите схемы workflow для импорта в XML. Файлы с workflow и скриншоты workflow приложите к решению задания.<br>

![Запуск и прохождение](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-1/6.png)
