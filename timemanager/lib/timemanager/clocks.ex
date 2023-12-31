defmodule Timemanager.Clocks do
  @moduledoc """
  The Clocks context.
  """

  import Ecto.Query, warn: false
  alias Timemanager.Repo

  alias Timemanager.Clocks.Clock

  @doc """
  Returns the list of clocks.

  ## Examples

      iex> list_clocks()
      [%Clock{}, ...]

  """
  def list_clocks do
    Repo.all(Clock)
  end

  @doc """
  Gets a single clock.

  Raises `Ecto.NoResultsError` if the Clock does not exist.

  ## Examples

      iex> get_clock!(123)
      %Clock{}

      iex> get_clock!(456)
      ** (Ecto.NoResultsError)

  """
  def get_clock!(id), do: Repo.get!(Clock, id)

  @doc """
  Creates a clock.

  ## Examples

      iex> create_clock(%{field: value})
      {:ok, %Clock{}}

      iex> create_clock(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_clock(attrs \\ %{}) do
    %Clock{}
    |> Clock.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a clock.

  ## Examples

      iex> update_clock(clock, %{field: new_value})
      {:ok, %Clock{}}

      iex> update_clock(clock, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_clock(%Clock{} = clock, attrs) do
    clock
    |> Clock.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a clock.

  ## Examples

      iex> delete_clock(clock)
      {:ok, %Clock{}}

      iex> delete_clock(clock)
      {:error, %Ecto.Changeset{}}

  """
  def delete_clock(%Clock{} = clock) do
    Repo.delete(clock)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking clock changes.

  ## Examples

      iex> change_clock(clock)
      %Ecto.Changeset{data: %Clock{}}

  """
  def change_clock(%Clock{} = clock, attrs \\ %{}) do
    Clock.changeset(clock, attrs)
  end

 @doc """
  Returns the last clock from a user.

  ## Examples
     iex> get_last_clock_from_user_id(1)
     [%Clock{}]

  """
  def get_last_clock_from_user_id(id) do
    from(c in Clock, where: c.user == ^id) |> Repo.all()
    |> Enum.sort_by(& &1.time)
    |> Enum.reverse()
    |> Enum.take(1)
  end

  @doc """
  Returns the clocks from a user.

  ## Examples
     iex> get_clocks_from_user(1)
     [%Clock{}]

  """
  def get_clocks_from_user(id) do
    from(c in Clock, where: c.user == ^id) |> Repo.all()
  end

  @doc """
  Returns the clocks from a user in a date interval.
  """
  def get_clocks_user_from_date_interval(start_date, end_date,user_id) do
    from(c in Clock, where: c.user == ^user_id and c.time >= ^start_date and c.time <= ^end_date) |> Repo.all()
  end
end
