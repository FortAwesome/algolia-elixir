defmodule Algolia.Mixfile do
  use Mix.Project

  def project do
    [
      app: :algolia,
      version: "0.0.2",
      description: "Elixir implementation of Algolia Search API",
      elixir: "~> 1.5",
      package: package(),
      deps: deps(),
      docs: [extras: ["README.md"], main: "readme"],
      source_url: "https://github.com/FortAwesome/algolia-elixir"
    ]
  end

  def package do
    [
      maintainers: ["Font Awesome"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/FortAwesome/algolia-elixir"}
    ]
  end

  def application do
    [applications: [:logger, :hackney]]
  end

  defp deps do
    [
      {:hackney, "~> 1.20.1"},
      {:jason, "~> 1.4.4"}
    ]
  end
end
