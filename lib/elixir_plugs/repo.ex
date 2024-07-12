defmodule ElixirPlugs.Repo do
  use Ecto.Repo,
    otp_app: :elixir_plugs,
    adapter: Ecto.Adapters.MyXQL
end
