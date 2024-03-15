FROM redis:7.2.4
LABEL maintainer="leomatos.souza@hotmail.com"
WORKDIR /giropops-senhas
COPY giropops-senhas ./
RUN apt-get update && apt-get install pip -y && pip install --no-cache-dir -r requirements.txt --break-system-packages
ENV REDIS_HOST=localhost
CMD redis-server --daemonize yes ; flask run --host=0.0.0.0
EXPOSE 5000
