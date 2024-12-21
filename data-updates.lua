---@type number
---@diagnostic disable: assign-type-mismatch
local TIME_FILL = settings.startup["barrel-size-fill-time"].value
---@type integer
local CAP = settings.startup["barrel-size-capacity"].value

if mods["PressurizedBarrels"] then
    require("__PressurizedBarrels__/data-final-fixes")
end

for _, recipe in pairs(data.raw.recipe) do
    if recipe.subgroup and string.match(recipe.subgroup, "fill%-barrel") ~= nil then
        recipe.energy_required = TIME_FILL
        recipe.ingredients[1].amount = CAP
    elseif recipe.subgroup and string.match(recipe.subgroup, "empty%-barrel") ~= nil then
        recipe.energy_required = TIME_FILL
        recipe.results[1].amount = CAP
    end
end
