defprotocol SimulateError.SomeProtocol do
  def id(x)
end

defimpl SimulateError.SomeProtocol, for: Any do
  def id(x), do: x
end
