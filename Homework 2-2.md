<h1>Homework 2-2 </h1> <br>
<br>
<br>
<h2>Задача 1</h2><br>
<br>
Скриншот ЛК Yandex Cloud с созданной ВМ <br>

![скриншот ЛК Yandex Cloud с созданной ВМ](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%202-2/1%20VM.jpg)

Подключение к ВМ, внешний ip-адреc <br>

![подключение к ВМ, внешний ip-адрес](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%202-2/3%20login.png)

Добавление ключа в ssh-агент: "eval $(ssh-agent) && ssh-add" <br>

![добавление ключа в ssh-агент: eval $(ssh-agent) && ssh-add](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%202-2/2%20eval.png)


Параметр ```preemptible = true``` включает режим прерывистой ВМ, что позволяет сильно экономить бюджет выделенный под ресурсы.<br>
Параметр ```core_fraction=5``` позволяет ограничить процент мощности процессора, что также позволяет экономить бюджет выделенный под ресурсы.<br>
