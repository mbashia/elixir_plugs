defmodule ElixirPlugsWeb.DashboardLive.Index do
  use ElixirPlugsWeb, :live_view

  alias ElixirPlugs.Posts
  alias ElixirPlugs.Posts.Post

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
