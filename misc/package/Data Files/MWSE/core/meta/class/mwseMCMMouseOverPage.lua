-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- 
--- @class mwseMCMMouseOverPage : mwseMCMPage, mwseMCMCategory, mwseMCMComponent
--- @field elements mwseMCMMouseOverPageElements This dictionary-style table holds all the UI elements of the MouseOverPage, for easy access.
--- @field noScroll boolean This page type doesn't have a scrollbar, by default.
mwseMCMMouseOverPage = {}

--- Creates the mouseOverBlock UI element and stores it in `self.elements.mouseOverBlock`.
--- @param parentBlock tes3uiElement No description yet available.
function mwseMCMMouseOverPage:createMouseOverBlock(parentBlock) end

--- Creates a new MouseOverPage.
--- @param data mwseMCMMouseOverPage.new.data? This table accepts the following values:
--- 
--- `showHeader`: boolean? — *Default*: `false`. The page's label will only be created if set to true.
--- 
--- `label`: string? — *Optional*. The page label.
--- 
--- `noScroll`: boolean? — *Default*: `true`. When set to true, the page will not have a scrollbar. Particularly useful if you want to use a [ParagraphField](./mwseMCMParagraphField.md), which is not compatible with scroll panes.
--- 
--- `config`: table? — *Optional*. If provided, this `config` will be used to generate [`mwseMCMTableVariable`s](./mwseMCMTableVariable.md) for any [`mwseMCMSetting`s](./mwseMCMSetting.md) made inside this `Category`/`Page`. i.e., this parameter provides an alternative to explicitly constructing new variables. Subtables of this `config` can be accessed by passing a `configKey` to any `Category` that is nested inside this one.
--- 
--- `defaultConfig`: table? — *Optional*. Stores a default config that should be used by this mod's `Setting`s. This will initialize the `defaultSetting` field of any [`mwseMCMTableVariable`s](./mwseMCMTableVariable.md) created for this mod. Sub-configs can be accessed by passing a `configKey` to any `Category` that is nested inside this one.
--- 
--- `configKey`: string|number|nil — *Optional*. This can be used to access subtables of the `config` and `defaultConfig` stored in this component's `parentComponent`. This ensures that the `config` and `defaultConfig` stay synchronized.
--- 
--- `components`: mwseMCMComponent.new.data[]? — *Optional*. Use this if you want to directly create all the nested components in this Page. This table is described at each Component's `new` method.
--- 
--- `indent`: integer? — *Default*: `6`. The left padding size in pixels. Only used if the `childIndent` isn't set on the parent component.
--- 
--- `childIndent`: integer? — *Optional*. The left padding size in pixels. Used on all the child components.
--- 
--- `paddingBottom`: integer? — *Default*: `4`. The bottom border size in pixels. Only used if the `childSpacing` is unset on the parent component.
--- 
--- `childSpacing`: integer? — *Optional*. The bottom border size in pixels. Used on all the child components.
--- 
--- `inGameOnly`: boolean? — *Default*: `false`. No description yet available.
--- 
--- `postCreate`: nil|fun(self: mwseMCMMouseOverPage) — *Optional*. Can define a custom formatting function to make adjustments to any element saved in `self.elements`.
--- 
--- `class`: string? — *Optional*. No description yet available.
--- 
--- `componentType`: string? — *Optional*. No description yet available.
--- 
--- `parentComponent`: mwseMCMActiveInfo|mwseMCMBinder|mwseMCMButton|mwseMCMCategory|mwseMCMComponent|mwseMCMCycleButton|mwseMCMDropdown|mwseMCMExclusionsPage|mwseMCMFilterPage|mwseMCMHyperlink|mwseMCMInfo|mwseMCMKeyBinder|mwseMCMMouseBinder|mwseMCMMouseOverInfo|mwseMCMMouseOverPage|mwseMCMOnOffButton|mwseMCMPage|mwseMCMParagraphField|mwseMCMPercentageSlider|mwseMCMSetting|mwseMCMSideBarPage|mwseMCMSideBySideBlock|mwseMCMSlider|mwseMCMTemplate|mwseMCMTextField|mwseMCMYesNoButton|nil — *Optional*. No description yet available.
--- @return mwseMCMMouseOverPage page No description yet available.
function mwseMCMMouseOverPage:new(data) end

---Table parameter definitions for `mwseMCMMouseOverPage.new`.
--- @class mwseMCMMouseOverPage.new.data
--- @field showHeader boolean? *Default*: `false`. The page's label will only be created if set to true.
--- @field label string? *Optional*. The page label.
--- @field noScroll boolean? *Default*: `true`. When set to true, the page will not have a scrollbar. Particularly useful if you want to use a [ParagraphField](./mwseMCMParagraphField.md), which is not compatible with scroll panes.
--- @field config table? *Optional*. If provided, this `config` will be used to generate [`mwseMCMTableVariable`s](./mwseMCMTableVariable.md) for any [`mwseMCMSetting`s](./mwseMCMSetting.md) made inside this `Category`/`Page`. i.e., this parameter provides an alternative to explicitly constructing new variables. Subtables of this `config` can be accessed by passing a `configKey` to any `Category` that is nested inside this one.
--- @field defaultConfig table? *Optional*. Stores a default config that should be used by this mod's `Setting`s. This will initialize the `defaultSetting` field of any [`mwseMCMTableVariable`s](./mwseMCMTableVariable.md) created for this mod. Sub-configs can be accessed by passing a `configKey` to any `Category` that is nested inside this one.
--- @field configKey string|number|nil *Optional*. This can be used to access subtables of the `config` and `defaultConfig` stored in this component's `parentComponent`. This ensures that the `config` and `defaultConfig` stay synchronized.
--- @field components mwseMCMComponent.new.data[]? *Optional*. Use this if you want to directly create all the nested components in this Page. This table is described at each Component's `new` method.
--- @field indent integer? *Default*: `6`. The left padding size in pixels. Only used if the `childIndent` isn't set on the parent component.
--- @field childIndent integer? *Optional*. The left padding size in pixels. Used on all the child components.
--- @field paddingBottom integer? *Default*: `4`. The bottom border size in pixels. Only used if the `childSpacing` is unset on the parent component.
--- @field childSpacing integer? *Optional*. The bottom border size in pixels. Used on all the child components.
--- @field inGameOnly boolean? *Default*: `false`. No description yet available.
--- @field postCreate nil|fun(self: mwseMCMMouseOverPage) *Optional*. Can define a custom formatting function to make adjustments to any element saved in `self.elements`.
--- @field class string? *Optional*. No description yet available.
--- @field componentType string? *Optional*. No description yet available.
--- @field parentComponent mwseMCMActiveInfo|mwseMCMBinder|mwseMCMButton|mwseMCMCategory|mwseMCMComponent|mwseMCMCycleButton|mwseMCMDropdown|mwseMCMExclusionsPage|mwseMCMFilterPage|mwseMCMHyperlink|mwseMCMInfo|mwseMCMKeyBinder|mwseMCMMouseBinder|mwseMCMMouseOverInfo|mwseMCMMouseOverPage|mwseMCMOnOffButton|mwseMCMPage|mwseMCMParagraphField|mwseMCMPercentageSlider|mwseMCMSetting|mwseMCMSideBarPage|mwseMCMSideBySideBlock|mwseMCMSlider|mwseMCMTemplate|mwseMCMTextField|mwseMCMYesNoButton|nil *Optional*. No description yet available.

