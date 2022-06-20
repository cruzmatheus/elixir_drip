import Config

config :elixir_drip, storage_provider: ElixirDrip.Storage.Providers.GoogleCloudStorageLocal

import_config "#{Mix.env()}.exs"
