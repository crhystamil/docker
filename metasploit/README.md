Para contruir la imagen

    sudo docker build -f Dockerfile --tag repo/name .

Se tienen 2 opciones de ejecucion de metasploit, para estas opciones modificar
el archivo init.sh
    1.- iniciar como servicio
    2.- iniciar con una consola bash
     
Comando para iniciar nuestra imagen con bash

    sudo docker run -rm -ti -p 443:443 -v ~/.msf4:/root/.msf4 -v
    /tmp/msf:/tmp/data repo/name 

Comando para usar como servicio

    sudo docker run -d -p 55552:55553 repo/name
    sudo docker run -d -p 55552:55553 -v ~/.msf4:root/.msf4 -v /tmp/msf:/tmp/data repo/name


