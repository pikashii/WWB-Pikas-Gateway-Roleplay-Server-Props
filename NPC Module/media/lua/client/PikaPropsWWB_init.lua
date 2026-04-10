--***********************************************************
--**         ORIGINAL SCRIPTS BY ONELINE/D.BOROVSKY        **
--***********************************************************
require "ExamineUI/Examine"
require "ExamineUI/ExamineEntries"

local mod_id = "PikasGatewayPropsWWB"

-- Character entries for the Examine UI.
-- Most entries follow the convention: {id} -> image "{id}.png", text key "UI_Text_{id}"
-- Entries with mismatched image or text key use the format: {id, image, textKey}
local characters = {
    "MaxPoster",
    "Abraham",
    "Aiden",
    "Amanda",
    "Ben",
    "Blackwell",
    "Carl",
    "Casey",
    "Cassandra",
    "Charles",
    "Cole",
    "Dakota",
    "Dani",
    "Darren",
    "Deanna",
    "Del",
    "Demi",
    "Don",
    {"Kilean",   "Dwight",    "Kilean"},
    "Duke",
    "Eddie",
    "Eugene",
    "Ezekiel",
    {"Francis",  "Hood",      "Francis"},
    "Franco",
    "Gabriel",
    "Greg",
    "Hana",
    "Henry",
    {"Bevis",    "Jack",      "Jack"},
    "Jared",
    {"Selby",    "Jason",     "Jason"},
    "Javier",
    "John",
    "Junior",
    "Kelly",
    "Larue",
    "Leclair",
    "Gomez",
    "Malcolm",
    "Mansukh",
    "Marlene",
    "Marshall",
    "Marvin",
    "Matias",
    "Miller",
    {"Ward",     "Miranda",   "Miranda"},
    "Molly",
    "Nathan",
    "Rachel",
    "Rhea",
    "Robert",
    "Sam",
    "Sharon",
    {"Bezrukov", "Stanislav", "Bezrukov"},
    "Stella",
    "Drummer",
    "Tara",
    "TMIR",
    {"TMIR2",    "TMIR",      "TMIR"},
    {"TMIR3",    "TMIR",      "TMIR"},
    "Truman",
    "Tyrell",
    "WarPig",
    "Wendy",
    "Will",
    "Kozuch",
    "Winton",
}

local function bind()
    for _, entry in ipairs(characters) do
        local id, image, textKey
        if type(entry) == "table" then
            id      = entry[1]
            image   = entry[2]
            textKey = entry[3]
        else
            id      = entry
            image   = entry
            textKey = entry
        end

        ExamineEntries.addEntry(id, "media/ui/" .. image .. ".png", getText("UI_Text_" .. textKey))
        table.insert(SPageTable, "PikaProps." .. id)
    end
end

Events.OnGameStart.Add(function ()
    if Examine then
        bind()
        Examine.initialize(mod_id)
    end
end)
