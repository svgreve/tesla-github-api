# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :github_api,
  ecto_repos: [GithubApi.Repo]

# Configures the endpoint
config :github_api, GithubApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YJvohisBOmc103deheD7sFwb9m2fsuwA7BsSE2SOq14Z5W13bXpeMQbxBCyMz5M8",
  render_errors: [view: GithubApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: GithubApi.PubSub,
  live_view: [signing_salt: "DG8l74t2"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
