# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :busi_api,
  ecto_repos: [BusiApi.Repo]

# Configures the endpoint
config :busi_api, BusiApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OnpLGdmdU3qQbcMmycuF6u3XQQfq8Ju2elmg0Ut9/YWYpvbiWs2m+GcoG/7vqn3j",
  render_errors: [view: BusiApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: BusiApi.PubSub,
  live_view: [signing_salt: "MXq3vdta"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :busi_api, BusiApiWeb.Auth.Guardian,
  issuer: "busi_api",
  secret_key: "btZlfFN827x/GL5nkEGPEY/i/jdDHMmaLIT6c+l80IKbIxnR/e7zsWLABmzbZkJK"

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
