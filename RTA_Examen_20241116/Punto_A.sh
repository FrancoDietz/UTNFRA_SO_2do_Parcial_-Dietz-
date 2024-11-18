    # Configuramos los discos adicionales
    echo -e "n\np\n1\n\n\nw" | sudo fdisk /dev/sde
    echo -e "n\np\n1\n\n\nw" | sudo fdisk /dev/sdf

    # Crear volúmenes físicos
    sudo pvcreate /dev/sde1 /dev/sdf1

    # Crear grupo de volúmenes
    sudo vgcreate vg_datos /dev/sde1 /dev/sdf1

    # Crear volúmenes lógicos
    sudo lvcreate -L 5M -n lv_docker vg_datos
    sudo lvcreate -L 1.5G -n lv_workareas vg_datos
    sudo lvcreate -L 512M -n lv_swap vg_temp

    # Formatear los volúmenes lógicos
    sudo mkfs.ext4 /dev/vg_datos/lv_docker
    sudo mkfs.ext4 /dev/vg_datos/lv_workareas
    sudo mkswap /dev/vg_temp/lv_swap

    # Crear puntos de montaje
    sudo mkdir -p /var/lib/docker /work

    # Montar los volúmenes
    sudo mount /dev/vg_datos/lv_docker /var/lib/docker
    sudo mount /dev/vg_datos/lv_workareas /work
    sudo swapon /dev/vg_temp/lv_swap
