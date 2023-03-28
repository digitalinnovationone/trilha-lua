local json = require "libs.json"
local inspect = require("libs.inspect")

local file = io.open("resources/example.json", "r")
local fileContent = file and file:read("a")
local fileDecoded = fileContent and json.decode(fileContent) or {}

os.execute("chcp 65001 > NUL")
print(fileDecoded)
print(inspect(fileDecoded))
print(fileDecoded.Dictionary.Dolphin)
