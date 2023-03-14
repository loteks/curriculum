import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :navigation, NavigationWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "Cz8ERwLtloX4VXl5agl0hv3JFCG3HOiodGhg9MarTf6IPXOuGT42tC+S2hltZojZ",
  server: false

# In test we don't send emails.
config :navigation, Navigation.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
