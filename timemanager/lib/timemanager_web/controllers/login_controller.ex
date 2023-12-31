defmodule TimemanagerWeb.LoginController do
  use TimemanagerWeb, :controller

  alias Timemanager.Users

  @doc """
   return the token from  email and password user
  """
  def login(conn, %{"email" => email, "password" => password} = params) do
    phone = Map.get(params, "phone",nil)
      case Users.authenticate_user(email, password) do
        {:ok, user} ->
          claim = %{"user_id" => user.id, "role" => user.role, "email" => user.email, "firstname" => user.firstname, "lastname" => user.lastname, "age" => DateTime.utc_now(), "phone" => phone}
          token = Phoenix.Token.sign(TimemanagerWeb.Endpoint, "user auth", claim)
          # Tokens.create_token(%{token: token, user: user.id})
          conn
          |> put_status(:ok)
          |> put_resp_header("location", ~p"/api/users/#{user}")
          |> render(:login, token: token, id: user.id)

        {:error, _reason} ->
          conn
          |> put_status(:ok)
          |> render(:error, error: "Invalid email or password")
      end
    end
  end
