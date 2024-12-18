FROM ghcr.io/userver-framework/ubuntu-22.04-userver:latest

WORKDIR /prsp

COPY . /prsp

RUN chmod +x ./docker_run_as_user.sh

RUN mkdir -p /cores

RUN ls

EXPOSE 8080

ENTRYPOINT ["./docker_run_as_user.sh"]

CMD ["build_debug/prsp","--config=configs/static_config.yaml", "--config_vars=configs/config_vars.docker.yaml"]
