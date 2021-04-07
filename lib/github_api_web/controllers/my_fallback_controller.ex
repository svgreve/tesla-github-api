defmodule MyFallbackController do
  use Phoenix.Controller

  alias GithubApiWeb.MyErrorView

  def call(conn, {:error, :not_found}) do
    conn
    |> put_status(:not_found)
    |> put_view(MyErrorView)
    |> render(:"404")
  end

  def call(conn, {:error, :bad_request}) do
    conn
    |> put_status(403)
    |> put_view(MyErrorView)
    |> render(:"400")
  end
end
