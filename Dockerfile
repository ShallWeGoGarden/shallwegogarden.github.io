FROM squidfunk/mkdocs-material:latest

RUN apk add --update bash jq curl &&\
    pip3 install --upgrade pip mkdocs-macros-plugin mkdocs-glightbox

WORKDIR /docs
EXPOSE 8000
