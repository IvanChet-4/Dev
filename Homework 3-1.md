<h1>Homework 3-1 </h1> <br>
<br>
<br>
<h2>Задача 1</h2><br>
<br>
<br>
Верия ansible:
<br>

![Версия ansible](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-1/0.png)

<br>
Попробуйте запустить playbook на окружении из test.yml, зафиксируйте значение, которое имеет факт some_fact для указанного хоста при выполнении playbook.
<br>

![Запуск с some_facts](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-1/1.png)

<br>
Найдите файл с переменными (group_vars), в котором задаётся найденное в первом пункте значение, и поменяйте его на all default fact.
<br>

![Запуск с all default fact](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-1/2.png)

<br>
Воспользуйтесь подготовленным (используется docker) или создайте собственное окружение для проведения дальнейших испытаний.
Проведите запуск playbook на окружении из prod.yml. 

<br>
Зафиксируйте полученные значения some_fact для каждого из managed host.
<br>

![Запуск с all default fact](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-1/3.png)

![Запуск с all default fact](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-1/4.png)


![Запуск с all default fact](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-1/5.png)

<br>
Добавьте факты в group_vars каждой из групп хостов так, чтобы для some_fact получились значения: для deb — deb default fact, для el — el default fact. 
<br>
Повторите запуск playbook на окружении prod.yml. Убедитесь, что выдаются корректные значения для всех хостов.
<br>

![Запуск с all default fact](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-1/6.png)

<br>
При помощи ansible-vault зашифруйте факты в group_vars/deb и group_vars/el с паролем netology.
<br>

![Запуск с all default fact](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-1/7.png)

![Запуск с all default fact](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-1/8.png)

![Запуск с all default fact](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-1/9.png)
