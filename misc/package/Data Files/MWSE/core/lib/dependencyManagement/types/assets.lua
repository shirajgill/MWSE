local util = require("dependencyManagement.util")
return {
    id = "assets",
    ---@param _dependencyManager DependencyManager
    ---@param assets string[]
    checkDependency = function(_dependencyManager, assets)
        --Check assets exist as files or directories
        local missingAssets = util.getMissingAssets(assets)
        if #missingAssets > 0 then
            return false, {
                {
                    title = "Missing Assets",
                    reasons = missingAssets
                }
            }
        end
        return true
    end
}