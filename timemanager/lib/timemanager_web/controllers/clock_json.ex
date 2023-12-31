defmodule TimemanagerWeb.ClockJSON do
  alias Timemanager.Clocks.Clock

  @doc """
  Renders a list of clocks.
  """
  def index(%{clocks: clocks}) do
    %{data: for(clock <- clocks, do: data(clock))}
  end

  @doc """
  Renders a single clock.
  """
  def show(%{clock: clock}) do
    %{data: data(clock)}
  end

  def error(%{error: error}) do
    %{data: %{error: error}}
  end

  defp data(%Clock{} = clock) do
    %{
      id: clock.id,
      status: clock.status,
      time: clock.time,
      description: clock.description,
      user: clock.user
    }
  end
end
