local createDepot = peripheral.find("create:depot")
local chestOutput = peripheral.find("minecraft:chest")

local itemName = "kubejs:invar_compound"
local itemInvarIngot = "thermal:invar_ingot"

function checkInvarAndSuck() 
    local item = createDepot.getItemDetail(1)
    if not item then 
        print("Aguardando algum item..")
        return
    end
    if item.name == itemName then
        print("Aguardando o processo do invar")
    elseif item.name == itemInvarIngot then
        print("Pegando invar.")
        pushInvarToNearChest()
    else 
        print("Item nao reconhecido. Vou obter para nao atrapalhar.")
        turtle.suck()
    end
    print(("%s (%s)"):format(item.name))
    sleep(1)
end

function pushInvarToNearChest()
    createDepot.pushItems(peripheral.getName(chestOutput), 1)
end

while true do
    print("rodando..")
    checkInvarAndSuck()
    sleep(1)
end
