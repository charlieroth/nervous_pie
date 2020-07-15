defmodule NervousPie do
  def test_request do
    {:ok, conn} = Mint.HTTP.connect(:http, "httpbin.org", 80)
    {:ok, conn, request_ref} = Mint.HTTP.request(conn, "GET", "/get", [], "")
    receive do
      message ->
        IO.inspect(message, label: :message)
        {:ok, conn, responses} = Mint.HTTP.stream(conn, message)
        IO.inspect(responses, label: :responses)
    end
  end
end
