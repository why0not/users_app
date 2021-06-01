defmodule UsersApp.Person do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string
    field :deleted_at, :utc_datetime
  end


  def soft_delete(person) do
    person
    |> change(%{deleted_at: date()})
  end

  def date() do
    DateTime.utc_now()
    |> DateTime.truncate(:second)
  end

  def changeset(person, params \\ %{}) do
    person
  |> cast(params, [:email, :deleted_at])
  |> unique_constraint(:email_deleted_at_cons, name: :users_email_deleted_at_index)
  end
end
