local a = 2;
local b = "whatever";

{
  meh: "some-value",
  meh2: a,
  meh3: b,
  meh4: [
    a,
    b,
  ],
  meh5: [
    "something",
    5,
    if a == 1 then
      a
    else
      b
  ]
}