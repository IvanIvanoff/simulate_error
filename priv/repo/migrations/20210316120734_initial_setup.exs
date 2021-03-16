defmodule SimulateError.Repo.Migrations.InitialSetup do
  use Ecto.Migration

  def change do
    create table :users do
      add(:age, :integer)

      timestamps()
    end

    create table :posts do
      add(:name, :string)
      add(:user_id, references(:users))

      timestamps()
    end
  end

end
