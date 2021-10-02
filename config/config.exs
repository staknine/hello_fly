# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :hello_fly,
  ecto_repos: [HelloFly.Repo]

# Configures the endpoint
config :hello_fly, HelloFlyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "57D30JXSFBi5xlcs7UivosYlNNCIufDSkStVQwSt9loHipbKtygihE8I0DLTa6u/",
  render_errors: [view: HelloFlyWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: HelloFly.PubSub,
  live_view: [signing_salt: "gnNRRb+M"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
