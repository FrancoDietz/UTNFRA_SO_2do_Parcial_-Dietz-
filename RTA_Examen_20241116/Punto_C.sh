perdon no se que poner bien aca esto de docker lo tuve que hacer en otra vm porque aca no me funcionaba el docker, ogualemnte son los mismos comandos tanto en esta vm como en la otra y estan los mismos archivos en el directorio docker a continuacion te dejo los comandos que utilice
  cd docker
  205  ls -l
  206  cat index.html
  207  vim index.html
  208  nano dockerfile
  209  ls -l
  210  pwd
  211  nano dockerfile
  212  ls -l
  213  docker build -t web1-<Dietz>.
  214  docker build -t web1-<Dietz> .
  215  bash dockerfile
  216  nano dockerfile
  217  ls -l
  218  cat index.html
  219  docker login -u francodietz
  220  docker build -t web1-<Dietz> .
  221  nano web2-<Dietz>
  222  ls -l
  223  nano web2<Dietz>
  224  nano web2-dietz
  225  ls -l
  226  docker build -t web2-dietz .
  227  docker images
  228  nano dockerfile
  229  docker build -t web2-<Dietz> .
  230  nano dockerfile
  231  bash dockerfile
  232  docker build -t web2-<Dietz> .
  233  docker build -t web2-<Tu-apellido> .
  234  FROM nginx:latest
  235  docker build -t web2-Dietz .
  236  docker build -t web2Dietz .
  237  docker build -t web2-Dietz .
  238  docker build -t web2-dietz .
  239  docker images
  240  docker system prune -a
  241  docker image prune
  242  docker build -t web2-dietz .
  243  docker system prune -a
  244  docker image prune
  245  docker volume prune
  246  docker container prune
  247  docker build -t web2-dietz .
  248  docker system prune -a
  249  docker container prune
  250  docker image prune
  251  sudo systemctl stop docker
  252  sudo rsync -aP /var/lib/docker/ /mnt/disco_sde/docker/
  253  sudo fdisk /dev/sde
  254  sudo fdisk /dev/sdg
  255  sudo rsync -aP /var/lib/docker/ /mnt/disco_sde/docker/
  256  sudo systemctl restart docker
  257  docker build -t web2-dietz .
  258  clear
  259  lsblk
  260  exit
  261  ls -l
  261  nano dockerfile
  262  docker build -t web2-dietz .
  263  docker images
  264  docker login -u francodietz
  265  docker push francodietz/web2-dietz
  266  docker push web2-dietz
  267  sudo docker push web2-dietz
  268  docker tag web2-dietz francodietz/web2-dietz
  269  docker push <francodietz>/web2-dietz
  270  docker push francodietz/web2-dietz
  271  docker run -d -p 8080:80 francodietz/web2-dietz
  272  history -a
