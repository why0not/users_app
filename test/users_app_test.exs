defmodule UsersAppTest do
  use ExUnit.Case
  doctest UsersApp

  test "greets the world" do
    assert UsersApp.hello() == :world
  end
end
