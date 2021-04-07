defmodule GithubApiWeb.RepoController do
  use GithubApiWeb, :controller

  alias GithubApi

  action_fallback MyFallbackController

  def index(conn, %{"username" => username}) do
    with {:ok, repos} <- GithubApi.user_repos(username) do
      render(conn, "index.json", repos: repos)
    end
  end
end
