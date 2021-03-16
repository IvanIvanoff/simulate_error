import Mix.Config

config :simulate_error, ecto_repos: [SimulateError.Repo]

config :simulate_error, SimulateError.Repo,
  database: "simulate_error_example",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  # OR use a URL to connect instead
  url: "postgres://postgres:postgres@localhost/simulate_error_example"
