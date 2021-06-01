defmodule Users.Migrations.DeletedAt do
  use Ecto.Migration

  def change do
      alter table(:users) do
        add :deleted_at, :utc_datetime, null: true
      end
  end
end
