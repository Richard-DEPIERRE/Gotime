defmodule TimemanagerWeb.ClockController do
  use TimemanagerWeb, :controller

  alias Timemanager.Clocks
  alias Timemanager.Clocks.Clock

  alias Timemanager.Users

  action_fallback TimemanagerWeb.FallbackController

  @doc """
  List all clocks.
  """
  def index(conn, _params) do
    clocks = Clocks.list_clocks()
    render(conn, :index, clocks: clocks)
  end



  defp get_client(conn, clock_params) do
    case clock_params["user"] do
      -1 ->
        token = Timemanager.Tokens.get_decoded_token(conn)
        id = token["user_id"]
        clock_params = Map.put(clock_params, "user", id)
      _ ->
        clock_params
    end
  end

  @doc """
  Create a new clock.
  """
  def create(conn, %{"clock" => clock_params}) do
    clock_params = get_client(conn, clock_params)
    client = Users.get_user(clock_params["user"])
    case client do
      {:ok, _} ->
        with {:ok, %Clock{} = clock} <- Clocks.create_clock(clock_params) do
          conn
          |> put_status(:created)
          |> put_resp_header("location", ~p"/api/clocks/#{clock}")
          |> render(:show, clock: clock)
        end
      {:error, _reason} ->
        conn
        |> put_status(:ok)
        |> render(:error, error: "Could not find user with id #{clock_params["user"]}")
    end
  end


  @doc """
  Show a specific clock. with id user from token
  """
  def show(conn, _params) do
    decoded_token = Timemanager.Tokens.get_decoded_token(conn)
    id = decoded_token["user_id"]
    client = Users.get_user(id)
    case client do
      {:ok, _} ->
        clocks = Clocks.get_clocks_from_user(id)
        conn
        |> put_status(:ok)
        |> render(:index, clocks: clocks)
      {:error, _reason} ->
        conn
        |> put_status(:ok)
        |> render(:error, error: "Could not find user with id #{id}")
    end
  end


  @doc """
  Show a specific clock. with id user given
  """
  def show_clocks_from_user_id(conn, %{"id" => id}) do
    client = Users.get_user(id)
    case client do
      {:ok, _} ->
        clocks = Clocks.get_clocks_from_user(id)
        conn
        |> put_status(:ok)
        |> render(:index, clocks: clocks)
      {:error, _reason} ->
        conn
        |> put_status(:ok)
        |> render(:error, error: "Could not find user with id #{id}")
    end
  end


  @doc """
  Update a specific clock.
  """
  def update(conn, %{"id" => id, "clock" => clock_params}) do
    clock = Clocks.get_clock!(id)

    with {:ok, %Clock{} = clock} <- Clocks.update_clock(clock, clock_params) do
      render(conn, :show, clock: clock)
    end
  end

  @doc """
  Delete a specific clock.
  """
  def delete(conn, %{"id" => id}) do
    clock = Clocks.get_clock!(id)

    with {:ok, %Clock{}} <- Clocks.delete_clock(clock) do
      send_resp(conn, :no_content, "")
    end
  end


  @doc """
    Get last clock from user with id user given
  """
  def get_last_clock(conn, %{"id" => id}) do
    client = Users.get_user(id)

    case client do
      {:ok, _} ->
        clocks = Clocks.get_last_clock_from_user_id(id)
        conn
        |> put_status(:ok)
        |> render(:index, clocks: clocks)
      {:error, _reason} ->
        conn
        |> put_status(:ok)
        |> render(:error, error: "Could not find user with id #{id}")
    end
  end
  @doc """
    Get last clock from user with id user from token
  """
  def get_last_clock_with_token(conn,_params) do
    decoded_token = Timemanager.Tokens.get_decoded_token(conn)
    id = decoded_token["user_id"]
    client = Users.get_user(id)

    case client do
      {:ok, _} ->
        clocks = Clocks.get_last_clock_from_user_id(id)
        conn
        |> put_status(:ok)
        |> render(:index, clocks: clocks)
      {:error, _reason} ->
        conn
        |> put_status(:ok)
        |> render(:error, error: "Could not find user with id #{id}")
    end
  end

  @doc """
    Get clocks from user with id user from token between start_date and end_date
  """
  def get_clocks_form_date_interval(conn, %{"start_date" => start_date, "end_date" => end_date}) do
    id = Timemanager.Tokens.get_decoded_token(conn)["user_id"]
    clocks = Clocks.get_clocks_user_from_date_interval(start_date, end_date, id)
    conn
    |> put_status(:ok)
    |> render(:index, clocks: clocks)
  end


end
