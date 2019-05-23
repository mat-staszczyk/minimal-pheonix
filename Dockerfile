FROM elixir:1.8.1

RUN apt-get update
RUN apt-get install --yes build-essential inotify-tools postgresql-client

WORKDIR /app

ENV MIX_ENV dev

RUN mix local.hex --force

RUN mix local.rebar --force

# COPY mix.* ./

# RUN mix deps.get

# RUN mix deps.compile

COPY . .

# RUN mix compile

EXPOSE 4000
