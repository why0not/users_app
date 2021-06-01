defmodule Users.Migrations.NewUniqueIndex do
  use Ecto.Migration

  def change do
    drop index(:users, [:email])
    create unique_index(:users, [:email, :deleted_at])
  end
end
