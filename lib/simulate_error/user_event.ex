defmodule SimulateError.User.Event do
  require Logger

  def emit_event(user) do
    Logger.info("Simulate pushing event to an event bus")
    user
  end
end
