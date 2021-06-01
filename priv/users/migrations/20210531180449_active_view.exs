defmodule Users.Migrations.ActiveView do
  use Ecto.Migration

  def change do
    execute "CREATE VIEW active AS SELECT id, email FROM users WHERE deleted_at IS null"
  end
end
