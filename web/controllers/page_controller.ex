defmodule MyApplication.PageController do
  use MyApplication.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def skrollr(conn, _params) do
    render conn, "index.html", layout: {MyApplication.LayoutView, "skrollr.html"}
  end
end
