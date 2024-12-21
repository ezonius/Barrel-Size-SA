---@type integer
---@diagnostic disable-next-line: assign-type-mismatch
local barrelSizeStack = settings.startup["barrel-size-stack"].value
data.raw.item["barrel"].stack_size=barrelSizeStack
