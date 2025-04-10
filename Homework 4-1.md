<h1>Homework 4-1 </h1> <br>
<br>
<br>

<h2>Задача 1</h2><br>

![start compose-jira.yml](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-1/0.png)


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
Остальные задачи должны проходить по упрощённому workflow:<br>
<br>
Open -> On develop.<br>
On develop -> Open, Done develop.<br>
Done develop -> On test.<br>
On test -> On develop, Done.<br>
Done -> Closed, Open.<br>
Что нужно сделать<br>
<br>
Создайте задачу с типом bug, попытайтесь провести его по всему workflow до Done.<br>
Создайте задачу с типом epic, к ней привяжите несколько задач с типом task, проведите их по всему workflow до Done.<br>
При проведении обеих задач по статусам используйте kanban.<br>
Верните задачи в статус Open.<br>
Перейдите в Scrum, запланируйте новый спринт, состоящий из задач эпика и одного бага, стартуйте спринт, проведите задачи до состояния Closed. Закройте спринт.<br>
Если всё отработалось в рамках ожидания — выгрузите схемы workflow для импорта в XML. Файлы с workflow и скриншоты workflow приложите к решению задания.<br>
