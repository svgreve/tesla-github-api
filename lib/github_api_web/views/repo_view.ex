defmodule GithubApiWeb.RepoView do
  use GithubApiWeb, :view
  alias GithubApiWeb.RepoView

  def render("index.json", %{repos: repos}) do
    %{data: render_many(repos, RepoView, "repo.json")}
  end

  def render("repo.json", %{repo: repo}) do
    %{
      id: repo.id,
      name: repo.name,
      description: repo.description,
      html_url: repo.html_url,
      stargazers_count: repo.stargazers_count
    }
  end
end
