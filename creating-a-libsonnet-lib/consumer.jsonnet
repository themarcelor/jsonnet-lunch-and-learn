local mylib = import '../libs/mylib.libsonnet';

local loopty = ['a', 'b', 'c'];

[
  {
    howdy: "123",
    some_dynamic_field: mylib.new(
      name="bob",
      address="P. Sherman, 42 Wallaby Way, Sydney",
      phone='555 666 6666'
    )
  }

  for i in loopty
]