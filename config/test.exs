use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :chat, Chat.Endpoint,
  http: [port: 4001],
  server: false

config :chat, Chat.Repo, [
  adapter: Ecto.Adapters.Postgres,
  database: "app_#{Mix.env}",
  username: "postgres",
  password: "",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox]


# Print only warnings and errors during test
config :logger, level: :warn

