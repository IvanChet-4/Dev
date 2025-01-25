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

<br>

+ Расскомментировал блок кода, проверил, получил следующий вывод: <br>

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

 
+ Заменил имя контейнера на hello_world, получился следующий код:<br>

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
  name  = "hello_world"

  ports {
    internal = 80
    external = 9090
  }
}
```

![second name containered](https://github.com/IvanChet-4/Dev/blob/main/images/Homework%202-1/second%20name%20containered.png)

Команда <b> terraform apply -auto-approve <b> может быть опасна в применении т.к. новая конфигурация сразу принимается без подтверждения и без проверки на наличие ошибок, есть риск сломать текущую рабочую конфигурацию в случае ошибок. <br>

 
+ Прописал пару команд для уничтожения созданных ресурсов:<br>

```
terraform destroy && docker rm -vf $(docker ps -aq) && docker rmi -f $(docker images -aq)
```

Содержимое  terraform.tfstate:<br>

```
{
  "version": 4,
  "terraform_version": "1.10.5",
  "serial": 14,
  "lineage": "4ffa4d22-43f3-6397-2aa8-fc5f99614419",
  "outputs": {},
  "resources": [
    {
      "mode": "managed",
      "type": "docker_container",
      "name": "nginx",
      "provider": "provider[\"registry.terraform.io/kreuzwerker/docker\"]",
      "instances": [
        {
          "schema_version": 2,
          "attributes": {
            "attach": false,
            "bridge": "",
            "capabilities": [],
            "cgroupns_mode": null,
            "command": [
              "nginx",
              "-g",
              "daemon off;"
            ],
            "container_logs": null,
            "container_read_refresh_timeout_milliseconds": 15000,
            "cpu_set": "",
            "cpu_shares": 0,
            "destroy_grace_seconds": null,
            "devices": [],
            "dns": null,
            "dns_opts": null,
            "dns_search": null,
            "domainname": "",
            "entrypoint": [
              "/docker-entrypoint.sh"
            ],
            "env": [],
            "exit_code": null,
            "gpus": null,
            "group_add": null,
            "healthcheck": null,
            "host": [],
            "hostname": "006b8775d8cf",
            "id": "006b8775d8cf978fc4e9ddfce2d38558364ec6d328c16a63bcc43640cd941517",
            "image": "sha256:9bea9f2796e236cb18c2b3ad561ff29f655d1001f9ec7247a0bc5e08d25652a1",
            "init": false,
            "ipc_mode": "private",
            "labels": [],
            "log_driver": "json-file",
            "log_opts": null,
            "logs": false,
            "max_retry_count": 0,
            "memory": 0,
            "memory_swap": 0,
            "mounts": [],
            "must_run": true,
            "name": "hello_world",
            "network_data": [
              {
                "gateway": "172.17.0.1",
                "global_ipv6_address": "",
                "global_ipv6_prefix_length": 0,
                "ip_address": "172.17.0.2",
                "ip_prefix_length": 16,
                "ipv6_gateway": "",
                "mac_address": "02:42:ac:11:00:02",
                "network_name": "bridge"
              }
            ],
            "network_mode": "bridge",
            "networks_advanced": [],
            "pid_mode": "",
            "ports": [
              {
                "external": 9090,
                "internal": 80,
                "ip": "0.0.0.0",
                "protocol": "tcp"
              }
            ],
            "privileged": false,
            "publish_all_ports": false,
            "read_only": false,
            "remove_volumes": true,
            "restart": "no",
            "rm": false,
            "runtime": "runc",
            "security_opts": [],
            "shm_size": 64,
            "start": true,
            "stdin_open": false,
            "stop_signal": "SIGQUIT",
            "stop_timeout": 0,
            "storage_opts": null,
            "sysctls": null,
            "tmpfs": null,
            "tty": false,
            "ulimit": [],
            "upload": [],
            "user": "",
            "userns_mode": "",
            "volumes": [],
            "wait": false,
            "wait_timeout": 60,
            "working_dir": ""
          },
          "sensitive_attributes": [],
          "private": "eyJzY2hlbWFfdmVyc2lvbiI6IjIifQ==",
          "dependencies": [
            "docker_image.nginx_image"
          ]
        }
      ]
    },
    {
      "mode": "managed",
      "type": "docker_image",
      "name": "nginx_image",
      "provider": "provider[\"registry.terraform.io/kreuzwerker/docker\"]",
      "instances": [
        {
          "schema_version": 0,
          "attributes": {
            "build": [],
            "force_remove": null,
            "id": "sha256:9bea9f2796e236cb18c2b3ad561ff29f655d1001f9ec7247a0bc5e08d25652a1nginx:latest",
            "image_id": "sha256:9bea9f2796e236cb18c2b3ad561ff29f655d1001f9ec7247a0bc5e08d25652a1",
            "keep_locally": true,
            "name": "nginx:latest",
            "platform": null,
            "pull_triggers": null,
            "repo_digest": "nginx@sha256:0a399eb16751829e1af26fea27b20c3ec28d7ab1fb72182879dcae1cca21206a",
            "triggers": null
          },
          "sensitive_attributes": [],
          "private": "bnVsbA=="
        }
      ]
    },
    {
      "mode": "managed",
      "type": "random_password",
      "name": "random_string",
      "provider": "provider[\"registry.terraform.io/hashicorp/random\"]",
      "instances": [
        {
          "schema_version": 3,
          "attributes": {
            "bcrypt_hash": "$2a$10$KgxNWOcjJl6xocFiyHG.j.oDtrEea9GeFq89LbQo567WihcZLNG4e",
            "id": "none",
            "keepers": null,
            "length": 16,
            "lower": true,
            "min_lower": 1,
            "min_numeric": 1,
            "min_special": 0,
            "min_upper": 1,
            "number": true,
            "numeric": true,
            "override_special": null,
            "result": "qyub7YyqbjIOk8YS",
            "special": false,
            "upper": true
          },
          "sensitive_attributes": [
            [
              {
                "type": "get_attr",
                "value": "result"
              }
            ],
            [
              {
                "type": "get_attr",
                "value": "bcrypt_hash"
              }
            ]
          ]
        }
      ]
    }
  ],
  "check_results": null
}

```
 
+ docker-образ nginx:latest не был удален т.к. в файле main.tf указана переменная  keep_locally = true.<br>

https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/resources/image#keep_locally
