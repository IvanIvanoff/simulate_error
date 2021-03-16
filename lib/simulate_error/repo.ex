defmodule SimulateError.Repo do
  use Ecto.Repo,
    otp_app: :simulate_error,
    adapter: Ecto.Adapters.Postgres
end
