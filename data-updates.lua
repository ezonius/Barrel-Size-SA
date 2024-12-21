local TIME_FILL = settings.startup["barrel-size-fill-time"].value
local CAP = settings.startup["barrel-size-capacity"].value

for _,r in pairs(data.raw.recipe) do
	if r.subgroup=="fill-barrel" then
		r.energy_required = TIME_FILL
		r.ingredients[1].amount = CAP
	elseif r.subgroup=="empty-barrel" then
		r.energy_required = TIME_FILL
		r.results[1].amount = CAP
	end
end
