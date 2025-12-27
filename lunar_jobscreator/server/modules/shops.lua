local jobsConfig = nil
local oxInventoryStarted = GetResourceState("ox_inventory") == "started"
local shopJobLookup = {}

if oxInventoryStarted and Webhooks.settings.shops then
  exports.ox_inventory:registerHook("buyItem", function(purchase)
    local jobName = shopJobLookup[purchase.shopType]
    if not jobName then
      return
    end

    local currency = purchase.currency or "money"
    local logMessage = string.format("Bought %sx %s for %sx %s.", purchase.count, purchase.itemName, purchase.totalPrice, currency)
    Logs.send(jobName, jobName, logMessage)
  end)
end

lib.callback.register("lunar_unijob:buyItem", function(playerSource, shopKey, locationIndex, itemIndex, quantity)
  local player = Framework.getPlayerFromId(playerSource)
  if not player then
    return false
  end

  local jobName = player:getJob()
  local jobData = jobsConfig and jobsConfig[jobName]
  if not jobData or not jobData.shops then
    return false
  end

  local shopData = jobData.shops[shopKey]
  if not shopData then
    return false
  end

  local shopLocation = shopData.locations[locationIndex]
  local shopItem = shopData.items[itemIndex]
  if not shopLocation or not shopItem then
    return false
  end

  local isNearby = Utils.distanceCheck(playerSource, shopLocation, 5.0)
  if not isNearby then
    return false
  end

  if shopItem.grade then
    local playerGrade = player:getJobGrade()
    if playerGrade < shopItem.grade then
      return false
    end
  end

  local totalPrice = shopItem.price * quantity
  if totalPrice <= 0 then
    return false
  end

  local currency = shopItem.currency or "money"
  local accountMoney = player:getAccountMoney(currency)
  if totalPrice > accountMoney then
    return false, locale("not_enough_money")
  end

  SetTimeout(3000, function()
    local balance = player:getAccountMoney(currency)
    if balance < totalPrice then
      return
    end

    player:removeAccountMoney(currency, totalPrice)
    player:addItem(shopItem.name, quantity)
  end)

  return true
end)

function RegisterShop(jobConfig, shopKey, shopData)
  Editable.registerShop(jobConfig, shopKey, shopData)
  shopJobLookup[shopKey] = jobConfig.name
end

function RegisterJobShops(jobConfig)
  if not jobConfig.shops then
    return
  end

  for shopIndex, shopEntry in ipairs(jobConfig.shops) do
    local shopKey = string.format("%s_shop_%s", jobConfig.name, shopIndex)
    RegisterShop(jobConfig, shopKey, shopEntry)
  end
end

function InitShops(allJobsConfig)
  jobsConfig = allJobsConfig
  for _, jobConfig in pairs(jobsConfig) do
    RegisterJobShops(jobConfig)
  end
end

Shops = {
  init = InitShops,
  update = RegisterJobShops
}
