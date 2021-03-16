defprotocol SimulateError.SomeProtocol do
  def fun(x, user)
end

defimpl SimulateError.SomeProtocol, for: Any do
  @spec fun(any(), %SimulateError.User{}) :: any()
  def fun(x, _user) do
    x
  end
end
