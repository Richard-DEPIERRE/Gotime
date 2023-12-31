defmodule TimemanagerWeb.WorkingtimeController do
  use TimemanagerWeb, :controller

  alias Timemanager.Workingtimes
  alias Timemanager.Workingtimes.Workingtime
  alias Timemanager.Users

  alias Timemanager.Users

  action_fallback TimemanagerWeb.FallbackController
  @doc """
  List all workingtimes.
  """
  def index(conn, _params) do
    workingtimes = Workingtimes.list_workingtimes()
    render(conn, :index, workingtimes: workingtimes)
  end

  @doc """
  Create a new workingtime.
  """
  def create(conn, %{"workingtime" => workingtime_params}) do
    with {:ok, %Workingtime{} = workingtime} <- Workingtimes.create_workingtime(workingtime_params) do
      conn
      |> put_status(:created)
      |> render(:show, workingtime: workingtime)
    end
  end

  @doc """
  Show a specific workingtime.
  """
  def show(conn, %{"id" => id}) do
    workingtime = Workingtimes.get_workingtime!(id)
    render(conn, :show, workingtime: workingtime)
  end

  @doc """
  Update a specific workingtime.
  """
  def update(conn, %{"id" => id, "workingtime" => workingtime_params}) do
    workingtime = Workingtimes.get_workingtime!(id)

    with {:ok, %Workingtime{} = workingtime} <- Workingtimes.update_workingtime(workingtime, workingtime_params) do
      render(conn, :show, workingtime: workingtime)
    end
  end

  @doc """
  Delete a specific workingtime.
  """
  def delete(conn, %{"id" => id}) do
    workingtime = Workingtimes.get_workingtime!(id)

    with {:ok, %Workingtime{}} <- Workingtimes.delete_workingtime(workingtime) do
      send_resp(conn, :no_content, "")
    end
  end

  @doc """
  Show a specific workingtime from user.
  """
  def show_working_from_user_id(conn, %{"id" => id}) do
    IO.inspect("------------User found1----------------")
    client = Users.get_user(id)
    IO.inspect("------------User found2----------------")
    case client do
      {:ok, _} ->
        IO.inspect("------------User found3----------------")
        IO.inspect(id)
        workingtime = Workingtimes.get_working_from_user(id)
        IO.inspect("------------User found4----------------")
        conn
        |> put_status(:ok)
        |> render(:index, workingtimes: workingtime)
      {:error, _reason} ->
        conn
        |> put_status(:ok)
        |> render(:error, error: "Could not find user with id #{id}")
    end
  end
end
