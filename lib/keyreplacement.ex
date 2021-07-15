defmodule KeyReplacement do
  def replace_keys(data, key_map) when is_map(data) do
    data
    |> Enum.reduce(%{}, fn
      {k, v}, acc ->
        res = Enum.find(key_map, fn {type_id, _val} -> type_id == k end)

        if res != nil do
          Map.put(acc, res |> elem(1), replace_keys(v, key_map))
        else
          Map.put(acc, k, replace_keys(v, key_map))
        end
    end)
  end

  def replace_keys(data, _), do: data
end
