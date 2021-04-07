defmodule MyFallbackController do
  use Phoenix.Controller

  alias GithubApiWeb.MyErrorView

  def call(conn, {:error, %{status: status}}) do
    IO.inspect status
    conn
    |> put_status(status)
    |> put_view(MyErrorView)
    |> render("error.json", %{status: status})
  end

end
