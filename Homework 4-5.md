<h1>Homework 4-5 </h1> <br>
<br>
<br>
Добавление ВМ и настройка nexus <br><br>


![create VM](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-5/0_1.jpg)

nexus playbook:  https://github.com/IvanChet-4/Dev/tree/main/HW4-5/playbook_nexus/infrastructure <br><br>

![ansible playbook create nexus](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-5/0_2.png)

<br>
Запуск teamcity<br><br>

![step configuration](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-5/3.png)

![step configuration](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-5/4.png)

![step configuration](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-5/5.png)

![step configuration](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-5/6.png)

![step configuration](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-5/7.png)

![step configuration](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-5/8.png)

<h2>Задача 1</h2><br>
<br>
Создайте новый проект в teamcity на основе fork.<br><br>

![fork](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-5/1.jpg)

![create project](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-5/2.png)

<h2>Задача 2</h2><br>
<br>
Сделайте autodetect конфигурации.<br><br>

![create project](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-5/9.png)

<h2>Задача 3</h2><br>
<br>
Сохраните необходимые шаги, запустите первую сборку master.<br><br>

![run](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-5/10.png)

<h2>Задача 4</h2><br>
<br>
Поменяйте условия сборки: если сборка по ветке master, то должен происходит mvn clean deploy, иначе mvn clean test.<br><br>

![step build](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-5/11.png)

<h2>Задача 5</h2><br>
<br>
Для deploy будет необходимо загрузить settings.xml в набор конфигураций maven у teamcity, предварительно записав туда креды для подключения к nexus.<br><br>

settings.xml:  https://github.com/IvanChet-4/Dev/blob/main/HW4-5/settings.xml  <br><br>

![settings.xml](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-5/12.png)

<h2>Задача 6</h2><br>
<br>
В pom.xml необходимо поменять ссылки на репозиторий и nexus.<br><br>

pom.xml:  https://github.com/IvanChet-4/example-teamcity/blob/master/pom.xml  <br><br>

<h2>Задача 7</h2><br>
<br>
Запустите сборку по master, убедитесь, что всё прошло успешно и артефакт появился в nexus.  <br><br>

![nexus](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-5/13.png)

![master run](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-5/14.png)

<h2>Задача 8</h2><br>
<br>
Мигрируйте build configuration в репозиторий.  <br><br>

![git push](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-5/14.png)

<h2>Задача 9</h2><br>
<br>
Создайте отдельную ветку feature/add_reply в репозитории.  <br><br>

![git branch](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-5/16.png)

<h2>Задача 10</h2><br>
<br>
Напишите новый метод для класса Welcomer: метод должен возвращать произвольную реплику, содержащую слово hunter.  <br><br>

https://github.com/IvanChet-4/example-teamcity/blob/feature/add_reply/src/main/java/plaindoll/Welcomer.java  <br><br>


<h2>Задача 11</h2><br>
<br>
Дополните тест для нового метода на поиск слова hunter в новой реплике.  <br><br>

https://github.com/IvanChet-4/example-teamcity/blob/feature/add_reply/src/test/java/plaindoll/WelcomerTest.java  <br><br>

<h2>Задача 12</h2><br>
<br>
Сделайте push всех изменений в новую ветку репозитория.   <br><br>

![git push](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-5/17.png)

<h2>Задача 13</h2><br>
<br>
Убедитесь, что сборка самостоятельно запустилась, тесты прошли успешно.    <br><br>

![run new branch](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-5/18.png)

<h2>Задача 14</h2><br>
<br>
Внесите изменения из произвольной ветки feature/add_reply в master через Merge.    <br><br>

![git merge](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-5/19.png)

<h2>Задача 15</h2><br>
<br>
Убедитесь, что нет собранного артефакта в сборке по ветке master.     <br><br>

<h2>Задача 16</h2><br>
<br>
Настройте конфигурацию так, чтобы она собирала .jar в артефакты сборки.     <br><br>

![conf](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-5/20.png)

<h2>Задача 17</h2><br>
<br>
Проведите повторную сборку мастера, убедитесь, что сбора прошла успешно и артефакты собраны.    <br><br>

![nexus jar](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-5/21.png)

![run](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%204-5/22.png)

<h2>Задача 18</h2><br>
<br>
Проверьте, что конфигурация в репозитории содержит все настройки конфигурации из teamcity.    <br><br>

<h2>Задача 19</h2><br>
<br>
В ответе пришлите ссылку на репозиторий.    <br><br>

https://github.com/IvanChet-4/example-teamcity    <br><br>
