FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

# Install dependencies
RUN apt-get update && \
    apt-get install -y curl && \
    curl -fsSL https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb -o erlang-solutions.deb && \
    dpkg -i erlang-solutions.deb && \
    apt-get update && \
    apt-get install -y esl-erlang elixir
