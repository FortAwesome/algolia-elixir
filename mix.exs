defmodule Algolia.Mixfile do
  use Mix.Project

  def project do
    [
      app: :algolia,
      version: "0.8.0",
      description: "Elixir implementation of Algolia Search API",
      elixir: "~> 1.5",
      package: package(),
      deps: deps(),
      docs: [extras: ["README.md"], main: "readme"]
    ]
  end

  def package do
    [
      maintainers: ["Sikan He"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/sikanhe/algolia-elixir"}
    ]
  end

  def application do
    [applications: [:logger, :hackney]]
  end

  defp deps do
    [
      {:hackney, "~> 1.20.1"},
      {:jason, "~> 1.4.1"}
    ]
  end
end
