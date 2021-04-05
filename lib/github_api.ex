defmodule GithubApi do
  alias GithubApi.Client

  @moduledoc """
  GithubApi keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def get_repos(username) do
    {:ok, repos} = Client.get_repos(username)

    repos
    |> Enum.map(fn repo -> select_fields(repo) end)
  end

  defp select_fields(%{
         "id" => id,
         "description" => description,
         "html_url" => html_url,
         "name" => name,
         "stargazers_count" => stargazers_count
       }) do
    %{
      id: id,
      name: name,
      description: description,
      html_url: html_url,
      stargazers_count: stargazers_count
    }
  end
end
