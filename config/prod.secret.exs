use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :js_test, JsTest.Endpoint,
  secret_key_base: "YYWsD1rPkzlvO3aCqCp2orhYjlhrOahgS00YXnCMSPek0smAwwWKKXXYP+2Imo7L"

# Configure your database
config :js_test, JsTest.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "js_test_prod",
  size: 20 # The amount of database connections in the pool
