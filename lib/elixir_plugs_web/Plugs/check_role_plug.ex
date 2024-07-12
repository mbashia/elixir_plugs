defmodule ElixirPlugsWeb.CheckRolePlug do
  import Plug.Conn
  alias Phoenix.Controller
  alias ElixirPlugsWeb.Router.Helpers, as: Routes

  def init(pots), do: pots

  def call(conn, required_role) do
    user = conn.assigns[:current_user]

    cond do
      user && user.role == required_role ->
        conn

      user ->
        conn
        |> Controller.put_flash(:error, "You do not have permission to access this page.")
        |> Controller.redirect(to: Routes.post_index_path(conn, :index))
        |> halt()

      true ->
        conn
        |> Controller.put_flash(:error, "You need to log in to access this page.")
        |> Controller.redirect(to: Routes.session_path(conn, :new))
        |> halt()
    end
  end
end
