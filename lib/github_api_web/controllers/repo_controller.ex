defmodule GithubApiWeb.RepoController do
  use GithubApiWeb, :controller

  alias GithubApi

  def index(conn, %{"username"=> username}) do
    repos = GithubApi.get_repos(username)
    render(conn, "index.json", repos: repos)
  end

end
