defmodule NervousPieTest do
  use ExUnit.Case
  doctest NervousPie

  test "greets the world" do
    assert NervousPie.hello() == :world
  end
end
