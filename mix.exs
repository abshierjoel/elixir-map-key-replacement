defmodule Keyreplacement.MixProject do
  use Mix.Project

  def project do
    [
      app: :keyreplacement,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [applications: applications(Mix.env())]
  end

  defp applications(:dev), do: applications(:all) ++ [:remix]
  defp applications(_all), do: [:logger]

  # Specifies which paths to compile per environment.
  defp elixirc_paths(_),
    do: ["lib"]

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:remix, "~> 0.0.1", only: :dev}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
