Parser = {}

function validateTypeMatches(valueToCheck, expectedType, defaultValue)
  if valueToCheck == nil then
    return defaultValue
  end
  return type(valueToCheck) == expectedType
end

function validateJobData(jobData)
  local isValid = validateTypeMatches(jobData.name, "string", false)
  if not isValid then
    return false, "the name field needs to be a valid string."
  end

  isValid = validateTypeMatches(jobData.label, "string", false)
  if not isValid then
    return false, "the label field needs to be a valid string."
  end

  isValid = validateTypeMatches(jobData.grades, "array", false)
  if not isValid then
    return false, "provide valid grades in an array."
  end

  isValid = validateTypeMatches(jobData.blips, "array", true)
  if not isValid then
    return false, "provide valid blips data in an array."
  end

  isValid = validateTypeMatches(jobData.cloakrooms, "table", true)
  if not isValid then
    return false, "provide valid cloakrooms table."
  end

  isValid = validateTypeMatches(jobData.collecting, "array", true)
  if not isValid then
    return false, "provide valid collecting data in an array."
  end

  isValid = validateTypeMatches(jobData.crafting, "array", true)
  if not isValid then
    return false, "provide valid crafting data in an array."
  end

  isValid = validateTypeMatches(jobData.garages, "array", true)
  if not isValid then
    return false, "provide valid garage data in an array."
  end

  isValid = validateTypeMatches(jobData.selling, "array", true)
  if not isValid then
    return false, "provide valid selling data in an array."
  end

  isValid = validateTypeMatches(jobData.shops, "array", true)
  if not isValid then
    return false, "provide valid shops in an array."
  end

  isValid = validateTypeMatches(jobData.stashes, "array", true)
  if not isValid then
    return false, "provide valid stashes in an array."
  end

  return true
end

function validateConditionalDirectives(rawScript)
  local lastDirective = nil

  for line in rawScript:gmatch("[^\n]+") do
    local hasIf = line:find("---@if_resource") or line:find("---@if_not_resource")
    if hasIf then
      if lastDirective then
        return false
      end
      local resourceName = line:match("%((.-)%)")
      if not resourceName then
        return false
      end
      lastDirective = "if_resource"
    else
      local hasElseIf = line:find("---@elseif_resource") or line:find("---@elseif_not_resource")
      if hasElseIf then
        if lastDirective ~= "if_resource" and lastDirective ~= "elseif_resource" then
          return false
        end
        local resourceName = line:match("%((.-)%)")
        if not resourceName then
          return false
        end
        lastDirective = "elseif_resource"
      else
        local hasElse = line:find("---@else")
        if hasElse then
          if lastDirective ~= "if_resource" and lastDirective ~= "elseif_resource" then
            return false
          end
          if line:match("%((.-)%)") then
            return false
          end
          lastDirective = "else"
        else
          local hasEnd = line:find("---@end")
          if hasEnd then
            if not lastDirective then
              return false
            end
            if line:match("%((.-)%)") then
              return false
            end
            lastDirective = nil
          end
        end
      end
    end
  end

  if lastDirective then
    return false
  end

  return true
end

function isResourceStarted(resourceName)
  local state = GetResourceState(resourceName)
  return state == "started"
end

function filterAnnotatedScript(rawScript)
  local isValidDirectiveStructure = validateConditionalDirectives(rawScript)
  if not isValidDirectiveStructure then
    return
  end

  local filteredScript = ""
  local readMode = "reading"
  local iterator, captureA, captureB, captureC = rawScript:gmatch("[^\n]+")

  for line in iterator, captureA, captureB, captureC do
    local isIfResource = line:find("---@if_resource")
    if isIfResource and readMode == "reading" then
      local resourceName = line:match("%((.-)%)")
      local hasResource = isResourceStarted(resourceName)
      if not hasResource then
        readMode = "skipping"
      else
        readMode = "reading_to_end"
      end
    else
      local isIfNotResource = line:find("---@if_not_resource")
      if isIfNotResource and readMode == "reading" then
        local resourceName = line:match("%((.-)%)")
        local hasResource = isResourceStarted(resourceName)
        if hasResource then
          readMode = "skipping"
        else
          readMode = "reading_to_end"
        end
      else
        local isElseIfResource = line:find("---@elseif_resource")
        if isElseIfResource then
          if readMode == "skipping" then
            local resourceName = line:match("%((.-)%)")
            local hasResource = isResourceStarted(resourceName)
            if hasResource then
              readMode = "reading_to_end"
            end
          elseif readMode == "reading_to_end" then
            readMode = "skipping_to_end"
          end
        else
          local isElseIfNotResource = line:find("---@elseif_not_resource")
          if isElseIfNotResource then
            if readMode == "skipping" then
              local resourceName = line:match("%((.-)%)")
              local hasResource = isResourceStarted(resourceName)
              if not hasResource then
                readMode = "reading_to_end"
              end
            elseif readMode == "reading_to_end" then
              readMode = "skipping_to_end"
            end
          else
            local isElseDirective = line:find("---@else")
            if isElseDirective then
              if readMode == "skipping" then
                readMode = "reading_to_end"
              else
                readMode = "skipping"
              end
            else
              local isEndDirective = line:find("---@end")
              if isEndDirective then
                if readMode == "skipping" or readMode == "reading_to_end" or readMode == "skipping_to_end" then
                  readMode = "reading"
                end
              elseif readMode == "reading" or readMode == "reading_to_end" then
                filteredScript = filteredScript .. "\n" .. line
              end
            end
          end
        end
      end
    end
  end

  return filteredScript
end

Parser.parse = function(rawScript)
  local filteredScript = filterAnnotatedScript(rawScript)
  local loadedFn, syntaxError = load(filteredScript or rawScript)
  if not loadedFn then
    return false, "Couldn't load %s due to a syntax error: " .. syntaxError
  end

  local parsedJob = loadedFn()
  if not parsedJob then
    return false, "Couldn't load %s due to no return statement."
  end

  local isValid, validationError = validateJobData(parsedJob)
  if isValid then
    if not filteredScript then
      warn("Ignoring annotations in job %s.", parsedJob.name)
    end
    return true, parsedJob
  else
    return false, "Couldn't load %s due to invalid data: " .. validationError
  end
end
