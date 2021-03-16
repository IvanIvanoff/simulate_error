defmodule SimulateError.User do
  use Ecto.Schema

  import SimulateError.Uesr.Event, only: [emit_event: 1]

  @type t :: %__MODULE__{
          age: integer()
        }

  schema "users" do
    field(:age, :integer)
  end

  def create_user(_) do
    emit_event(%__MODULE__{})
  end
end
