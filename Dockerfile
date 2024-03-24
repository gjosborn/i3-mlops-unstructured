FROM python:3.11.7

RUN pip install jupyterlab

RUN pip install unstructured[all-docs]

EXPOSE 8888

RUN mkdir -p notebook

WORKDIR /notebook

CMD jupyter lab --ip 0.0.0.0 --port 8888 --allow-root --no-browser
