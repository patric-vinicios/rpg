use Mix.Config

# Configure your database
config :api, Api.Repo,
  username: "postgres",
  password: "postgres",
  database: "api_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  port: 54_321,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :api, ApiWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
