local char = 'a';
local num = 1;
local ls = [];
local obj = {
  param: "value",
};

local typeOfChart = std.type(char);

local result1 = std.trace("obj content: %s" % [obj], obj);
local result2 = std.trace(std.format("char type : %s", typeOfChart), num);
local result3 = std.trace("", std.type(num));
local result4 = std.trace("", std.type(ls));

local loopty = [1, 2, 3, 4];

{
  result1: result1,
  result2: result2,
  result3: result3,
  result4: result4,

  // gotcha: dynamically-named keys must be surrounded with square brackets
  result5: [
    {
      whatever: "meh"
    }

    for i in loopty
    //[ "key%s" % [i] ]: std.format("value%s",i)
  ]
}
