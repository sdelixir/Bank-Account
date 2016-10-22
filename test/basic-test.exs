defmodule BasicTest do

  def test(test_name, expected, actual) do
    IO.puts test_name
    display_results(expected, actual)
  end

  def display_results(expected, actual) do
    result = (expected == actual)
    if result do
      IO.puts "PASS"
    else
      IO.puts "Expected: #{expected}"
      IO.puts "Actual:   #{actual}"
      IO.puts "FAIL"
    end
    IO.puts "----------------------------------"
  end

end
