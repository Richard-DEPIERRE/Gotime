defmodule Timemanager.TasksFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Timemanager.Tasks` context.
  """

  @doc """
  Generate a task.
  """
  def task_fixture(attrs \\ %{}) do
    {:ok, task} =
      attrs
      |> Enum.into(%{
        description: "some description",
        status: "some status",
        title: "some title"
      })
      |> Timemanager.Tasks.create_task()

    task
  end

  @doc """
  Generate a task.
  """
  def task_fixture(attrs \\ %{}) do
    {:ok, task} =
      attrs
      |> Enum.into(%{
        description: "some description",
        status: 42,
        title: "some title"
      })
      |> Timemanager.Tasks.create_task()

    task
  end

  @doc """
  Generate a task.
  """
  def task_fixture(attrs \\ %{}) do
    {:ok, task} =
      attrs
      |> Enum.into(%{
        description: "some description",
        title: "some title"
      })
      |> Timemanager.Tasks.create_task()

    task
  end
end
