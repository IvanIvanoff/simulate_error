defmodule SimulateError.Post do
  use Ecto.Schema

  import Ecto.Query

  alias SimulateError.Repo
  alias SimulateError.User

  @derive [SimulateError.SomeProtocol]
  schema "posts" do
    field(:name, :string)

    belongs_to(:user, User)
  end

  def new_user() do
    User.create_user(%{})
  end

  @spec user_posts_count(%User{}) :: integer()
  def user_posts_count(user) do
    from(p in __MODULE__, where: p.user_id == ^user.id, select: fragment("count(*)"))
    |> Repo.one()
  end
end
