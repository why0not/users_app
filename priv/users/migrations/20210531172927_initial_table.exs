defmodule Users.Migrations.InitialTable do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string, null: false, size: 40
    end

    create unique_index(:users, [:email])
  end
end
