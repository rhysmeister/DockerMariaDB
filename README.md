# MariaDB Docker Image

This Docker Image runs MariaDB in CentOS 8 and exposes the following ports...

* 3306 - MariaDB port

# Build and run the Docker image


```bash
docker build -t mariadb .
docker volume create mariadb
docker run -tid --mount source=mariadb,target=/var/lib/mysql --rm -p 3306:3306 --name mariadb mariadb
docker container ls
```

# Verify ports are open on host

* MacOS

```bash
netstat -anp tcp | grep LISTEN
```

* Linux

```bash
netstat -tulpn | grep LISTEN
```

# Access the MariaDB instance from the host

```bash
mysql
```

# Delete the container volumes

```bash
docker volume rm mariadb
```

# MariaDB Users

Docker Image Default root password = secret

Edit the mariadb.sql file with your own customisations before rebuilding the image.
