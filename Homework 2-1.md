<h1>Homework 2-1</h1> <br>
<br>
<br>
<h2>Задача 1</h2><br>
<br>

Установил terraform и docker<br>

![docker ver](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%202-1/docker%20ver.png)

![terraform ver](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%202-1/terraform%20ver.png)

<br>
<h2>Задача 2</h2><br>
<br>
 
+ Содержимое проекта скачано в отдельную директорию<br>
<br>  
 
+ Судя по содержимому .gitignore, хранение ключей, токенов предполагается в файле:<br>
personal.auto.tfvars  <br>
<br>
 
+ Содержимое random_password: <br>

```
"result": "qyub7YyqbjIOk8YS"
```

![Password in result](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%202-1/Password%20in%20result.png)


+ Расскомментировал блок кода, получил следующий вывод: <br>

![terraform validate error](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%202-1/terraform%20validate%20error.png)
 
+ Исправил код:<br>

```
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      #version = "~> 3.0.1"
    }
  }
  required_version = ">=1.8.4" /*Многострочный комментарий.
 Требуемая версия terraform */
}
provider "docker" {}

#однострочный комментарий

resource "random_password" "random_string" {
  length      = 16
  special     = false
  min_upper   = 1
  min_lower   = 1
  min_numeric = 1
}


resource "docker_image" "nginx_image" {
  name         = "nginx:latest"
  keep_locally = true
}

resource "docker_container" "nginx" {
  image = docker_image.nginx_image.image_id
  name  = "example_${random_password.random_string.result}"

  ports {
    internal = 80
    external = 9090
  }
}

```

![first naume containered](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%202-1/first%20naume%20containered.png)
