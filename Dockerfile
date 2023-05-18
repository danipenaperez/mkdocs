FROM squidfunk/mkdocs-material

LABEL version="1.0"
LABEL description="Mkdocs Custoimization Image"
LABEL author="Daniel Peña Perez | danipenaperez@gmail.com"

RUN apk add --no-cache \
    build-base cairo-dev cairo cairo-tools \
    # pillow dependencies
    jpeg-dev zlib-dev freetype-dev lcms2-dev openjpeg-dev tiff-dev tk-dev tcl-dev

RUN pip install "flask==1.0.1" "CairoSVG==2.1.3"
RUN pip install mkdocs-gitbook
RUN pip install mkdocs-bootstrap4
RUN pip install mkdocs-charts-plugin
