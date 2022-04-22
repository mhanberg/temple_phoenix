defmodule Temple.Phoenix.MixProject do
  use Mix.Project

  def project do
    [
      app: :temple_phoenix,
      version: "0.1.0-rc.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:temple, "~> 0.9.0-rc.0"},
      {:phoenix, "~> 1.6", optional: true},

      # docs
      {:ex_doc, "~> 0.28.3", only: :dev, runtime: false}
    ]
  end
end
