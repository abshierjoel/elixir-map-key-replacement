I was looking for a solution to recurse nested maps and replace the keys with atoms from another list.

### Usage

```elixir
id_maps = %{
  1 => :Primary,
  2 => :Secondary
}

result = replace_keys(data, id_maps)
```

### Example Usage

In this example, I would like to replace the ID's `1` & `2` with `:primary` and `:secondary`, respectively.

```elixir
[
  %{1 => %{"age" => 13, "name" => "Katie"}},
  %{
    2 => %{
        1 => %{"age" => 4, "name" => "Ella"},
        "age" => 29,
        "name" => "Jesse"
    }
  }
]
```

And I would like the following output:

```elixir
[
  %{primary: %{"age" => 13, "name" => "Katie"}},
  %{
    secondary: %{
      :primary => %{"age" => 4, "name" => "Ella"},
      "age" => 29,
      "name" => "Jesse"
    }
  }
]
```

```elixir
%{
  1 => :Primary,
  2 => :Secondary
}
```
