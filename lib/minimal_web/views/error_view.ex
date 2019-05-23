defmodule MinimalWeb.ErrorView do
  def render("404.html", _assigns) do
    "🔎 Not Found"
  end

  def render("500.html", _assigns) do
    "🚫 Server internal error"
  end
end
