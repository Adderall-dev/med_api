# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :med_api,
  ecto_repos: [MedApi.Repo]

# Configures the endpoint
config :med_api, MedApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5odXi0mpMWbVHbH4X9BCnQCMef8YLWpUw8k9/9VkO2KDRw9agt0QeHVZZDYx6KBZ",
  render_errors: [view: MedApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: MedApi.PubSub,
  live_view: [signing_salt: "SaZcm489"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
