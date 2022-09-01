defmodule Temple.Phoenix.MixProject do
  use Mix.Project

  def project do
    [
      app: :temple_phoenix,
      version: "0.1.0",
      description: "Phoenix integration for Temple",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      source_url: "https://github.com/mhanberg/temple_phoenix"
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
      {:temple, "~> 0.9.0"},
      {:phoenix_view, "~> 1.0", optional: true},

      # docs
      {:ex_doc, "~> 0.28.3", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      maintainers: ["Mitchell Hanberg"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/mhanberg/temple_phoenix",
        "Temple" => "https://github.com/mhanberg/temple"
      },
      files: ~w(lib priv CHANGELOG.md LICENSE mix.exs README.md .formatter.exs)
    ]
  end
end
