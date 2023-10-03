FROM squidfunk/mkdocs-material:latest AS builder

WORKDIR /

COPY requirements.txt /requirements.txt
RUN pip install -r requirements.txt

COPY docs /docs
COPY mkdocs.yml /mkdocs.yml

RUN LC_ALL=C.UTF-8 mkdocs build --site-dir /site

FROM nginx:stable-alpine AS runner

COPY --from=builder /site /usr/share/nginx/html

EXPOSE 80