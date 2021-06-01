import Config

config :users_app, Users,
  database: "users_app_users",
  username: "postgres",
  password: "dorde",
  hostname: "localhost"

  config :users_app,
      ecto_repos: [Users]
