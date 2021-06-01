defmodule Users do
  use Ecto.Repo,
    otp_app: :users_app,
    adapter: Ecto.Adapters.Postgres
end
