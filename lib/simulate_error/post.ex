defmodule SimulateError.Post do
  use Ecto.Schema

  alias SimulateError.User

  @derive [SimulateError.SomeProtocol]

  schema "posts" do
    field(:name, :string)

    belongs_to(:user, User)
  end
end
