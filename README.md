# TeslaGithubApi

## Desafio 02- Testando requisições com Bypass

Nesse desafio, você deverá testar o cliente criado no desafio anterior usando a lib bypass (link: [https://github.com/PSPDFKit-labs/bypass](https://github.com/PSPDFKit-labs/bypass)) aplicando tudo que aprendeu até agora!

## Desafio 01- Consumindo APIs

Nesse desafio, você deverá criar uma aplicação que consome a API do GitHub retornando a lista de repositórios de um usuário informado.
A rota para obter esse dado da API é `[https://api.github.com/users/danilo-vieira/repos](https://api.github.com/users/danilo-vieira/repos)` onde **danilo-vieira** deverá ser o nome do usuário que está solicitando a lista de repositórios, ou seja, esse dado deve ser dinâmico.

---

Para consumir a API do GitHub, crie um módulo para o seu client, utilizando a lib Tesla, como foi visto no módulo (link para a lib: [https://github.com/teamon/tesla](https://github.com/teamon/tesla)).

## O que deve ser retornado?

Para cada repositório de um usuário, você deve retornar apenas os seguintes campos vindos da API: `id`, `name`, `description`, `html_url` e `stargazers_count`.

## Rotas

A aplicação deverá possuir apenas uma rota que recebe o `username` do usuário e retorna os dados obtidos com status `200`.


To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
