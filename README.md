# UsersApp

## Installation
Download repo and configure database in `config.exs`, also if needed run `mix deps.get`.
Run `mix ecto.create` and `mix ecto.migrate`. Then start shell with `iex -S mix`.

**Usage**
```elixir
#define user
iex> user = %UsersApp.Person{email: "pero@gmail.com"}
#add user to table
iex> user |> UsersApp.Person.changeset |> Users.insert
#soft_delete user from table
iex> user = Users.get_by(UsersApp.Person, id: x)
iex> user |> UsersApp.Person.soft_delete |> Users.update
```
