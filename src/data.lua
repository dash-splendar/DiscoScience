local labChanges = require("prototypes.labChanges")

_G.DiscoScience = {}

_G.DiscoScience.prepareLab = function (lab)
    labChanges.prepareLab(lab)
end

labChanges.prepareLab(data.raw["lab"]["lab"])
if data.raw["lab"]["biolab"] then
    labChanges.prepareLab(data.raw["lab"]["biolab"])
end

data:extend{labChanges.labStorm}
