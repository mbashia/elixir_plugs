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

  # defp has_role?(%User{} = user, roles) when is_list(roles) do
  #   IO.inspect(roles)
  #   Enum.any?(roles, &has_role?(user, &1))
  # end

  # defp has_role?(%User{usertype: role}, role), do: true
  # defp has_role?(_user, _role), do: false

  # defp maybe_halt(true, conn), do: conn

  # defp maybe_halt(false, conn) do
  #   conn
  #   |> Controller.put_flash(:info, "Welcome Back")
  #   |> Controller.redirect(to: "/companyregistration/information")
  #   |> halt()
  # end
end
