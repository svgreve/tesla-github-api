defmodule GithubApi.Client do
  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://api.github.com/users/"
  plug Tesla.Middleware.Headers, [{"user-agent", "Tesla"}]
  plug Tesla.Middleware.JSON

  def get_repos(username) do
    case byte_size(username) do
      0 ->
        {:error, "User name not provided!"}

      _ ->
        "#{username}/repos"
        |> get()
        |> handle_get()
    end
  end

  defp handle_get({:ok, %Tesla.Env{status: 200, body: body}}) do
    {:ok, body}
  end

  defp handle_get({:ok, %Tesla.Env{status: 404, body: _body}}) do
    {:error, {:bad_request, "User name not found!"}}
  end

  defp handle_get({:error, reason}) do
    {:error, {:bad_request, reason}}
  end
end
