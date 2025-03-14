<h1>Homework 3-1 </h1> <br>
<br>
<br>
Верия ansible:
<br>

![Версия ansible](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-1/0.png)


<br>
<h2>Задача 1</h2><br>
<br>
Попробуйте запустить playbook на окружении из test.yml, зафиксируйте значение, которое имеет факт some_fact для указанного хоста при выполнении playbook.
<br>

![Запуск с some_facts](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-1/1.png)

<br>
<h2>Задача 2</h2><br>
<br>
Найдите файл с переменными (group_vars), в котором задаётся найденное в первом пункте значение, и поменяйте его на all default fact.
<br>

![Запуск с all default fact](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-1/2.png)

<br>
<h2>Задача 3</h2><br>
<br>
Воспользуйтесь подготовленным (используется docker) или создайте собственное окружение для проведения дальнейших испытаний.
<br>
Запустил два контейнера:
<br>

```
docker run -d --name rpm rockylinux:9 sleep infinity
docker run -d --name deb python:3.10-slim sleep infinity
```
<br>
<h2>Задача 4</h2><br>
<br>
Проведите запуск playbook на окружении из prod.yml. 
<br>
Зафиксируйте полученные значения some_fact для каждого из managed host.
<br>

![Запуск с all default fact](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-1/3.png)

![Запуск с all default fact](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-1/4.png)


![Запуск с all default fact](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-1/5.png)

<br>
<h2>Задача 5</h2><br>
<br>
Добавьте факты в group_vars каждой из групп хостов так, чтобы для some_fact получились значения: для deb — deb default fact, для el — el default fact. 
<br>
<h2>Задача 6</h2><br>
<br>
<br>
Повторите запуск playbook на окружении prod.yml. Убедитесь, что выдаются корректные значения для всех хостов.
<br>

![Запуск с all default fact](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-1/6.png)

<br>
<h2>Задача 7</h2><br>
<br>
<br>
При помощи ansible-vault зашифруйте факты в group_vars/deb и group_vars/el с паролем netology.
<br>

![Запуск с all default fact](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-1/7.png)

<br>
<h2>Задача 8</h2><br>
<br>
Запустите playbook на окружении prod.yml. При запуске ansible должен запросить у вас пароль. Убедитесь в работоспособности.
<br>
<br>
<h2>Задача 10</h2><br>
<br>
В prod.yml добавьте новую группу хостов с именем local, в ней разместите localhost с необходимым типом подключения.
<br>

```
https://github.com/IvanChet-4/Dev/blob/main/HW3-1/inventory/prod.yml
```

<br>
<h2>Задача 11</h2><br>
<br>
Запустите playbook на окружении prod.yml. 
<br>
При запуске ansible должен запросить у вас пароль. 
<br>
Убедитесь, что факты some_fact для каждого из хостов определены из верных group_vars.
<br>

![Запуск с all default fact](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-1/8.png)

<br>
<h2>Задача 9</h2><br>
<br>
Посмотрите при помощи ansible-doc список плагинов для подключения. Выберите подходящий для работы на control node.
<br>

![Запуск с all default fact](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%203-1/9.png)

<br>

```
В Ansible модуль ansible.builtin.local используется для выполнения задач на управляющем узле (control node)
```

<br>
