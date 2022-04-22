defmodule Temple.Phoenix.Engine do
  @behaviour Phoenix.Template.Engine

  @moduledoc """
  Template engine for Phoenix.

  Documentation is provided in `Temple.Phoenix`.
  """

  def compile(path, _name) do
    path
    |> File.read!()
    |> Code.string_to_quoted!(file: path)
    |> Temple.Parser.parse()
    |> Temple.Renderer.render(engine: Temple.engine())
  end
end
