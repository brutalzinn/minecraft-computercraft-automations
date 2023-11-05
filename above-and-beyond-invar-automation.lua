local createDepot = peripheral.find("create:depot")
local chestOutput = peripheral.find("minecraft:chest")

-- name of invar compound ingot from kubejs
local itemInvarCompound = "kubejs:invar_compound"
-- name of invar ingot
local itemInvarIngot = "thermal:invar_ingot"

-- EASY WAY TO HANDLE INVAR FILTER CHECKER
function checkInvarAndFilterToChest() 
    local item = createDepot.getItemDetail(1)
    if not item then 
        print("WAITING ANY ITENS")
        return
    end
    if item.name == itemInvarCompound then
        print("WAITING INVAR PROCESSING")
    elseif item.name == itemInvarIngot then
        print("PUSH INVAR TO NEAR CHEST")
        createDepot.pushItems(peripheral.getName(chestOutput), 1)
    else 
        print("REMOVING WRONG ITEM FROM Create depot inventory.")
        turtle.suck()
    end
    print(("%s (%s)"):format(item.name))
    sleep(1)
end

while true do
    checkInvarAndFilterToChest()
    sleep(1)
end
