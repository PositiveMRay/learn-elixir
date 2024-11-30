defmodule Sqrt do
  def sqrt(n, first_item, epsilon) do
    first_item
    |> Stream.iterate(&next(n, &1))
    |> within(epsilon)
  end

  defp within(stream, epsilon) do
    stream
    |> Enum.reduce_while(nil, fn a, prev ->
      if prev && abs(a - prev) <= epsilon do
        {:halt, a}
      else
        {:cont, a}
      end
    end)
  end

  defp next(n, x), do: (x + n / x) / 2
end

# Usage
IO.puts "The square root of 2 is approximately #{Sqrt.sqrt(3, 1.0, 0.00001)}"
