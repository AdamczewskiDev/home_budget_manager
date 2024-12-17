# syntax=docker/dockerfile:1

FROM mcr.microsoft.com/vscode/devcontainers/python:0-${VARIANT}

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    && apt-get -y autoremove \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /tmp/pip-tmp/
RUN pip3 --disable-pip-version-check --no-cache-dir install -r /tmp/pip-tmp/requirements.txt \
   && rm -rf /tmp/pip-tmp

ENV PYTHONPATH /workspace/home_budget_manager/src

RUN useradd -m vscode
USER vscode

WORKDIR /workspace/home_budget_manager/src
