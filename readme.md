# QUE ES ESTO

Es una imagen de mkdocs con varios plugins preinstalados

# Construir la imagen

Para construir la imagen en local usar el script create_image.sh

```sh
$ create_image.sh

....
...
Successfully built be9bfbad95dc
Successfully tagged danipenaperez/mkdocs:latest
Succesfully create danipenaperez/mkdocs image

```
Esto crea la imagen danipenaperez/mkdocs latest (No se esta haciendo versionado

# Publicar la imagen

Ejecutar ./publish.sh
```sh
./publish.sh
..
latest: digest: sha256:5543b0017957f1c0917bbb27c9bf3dabbb92e9c329b68472530d99dfc779a5c6 size: 4299
Succesfully published danipenaperez/mkdocs danipenaperez/mkdocs:latest on docker hub
```
# Añadir plugins a la imagen

Editar el archivo Dokerfile y ejecutar tanto RUN pip install $PackageName
que se necesiten


```sh
RUN pip install mkdocs-gitbook
```

# Arrancar la imagen :

Nos situamos en una carpeta donde tengamos dentro una carpeta /docs que contenga los documentos mkdocs que vamos a servir y el fichero mkdocs.yml

$ cd test
$ docker run --rm -it -d -p 9999:8000 -v $PWD:/docs danipenaperez/mkdocs

Comprobando:

$ $ docker ps
CONTAINER ID   IMAGE                  COMMAND                  CREATED          STATUS          PORTS                                       NAMES
a8c5db87ce0e   danipenaperez/mkdocs   "mkdocs serve --dev-…"   11 minutes ago   Up 11 minutes   0.0.0.0:9999->8000/tcp, :::9999->8000/tcp   xenodochial_leavitt