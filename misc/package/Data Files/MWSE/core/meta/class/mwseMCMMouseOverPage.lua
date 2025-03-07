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
--- `components`: mwseMCMComponent.getComponent.componentData[]? — *Optional*. Use this if you want to directly create all the nested components in this Page. This table is described at [getComponent](./mwseMCMPage.md#getcomponent).
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
--- `parentComponent`: mwseMCMActiveInfo|mwseMCMButton|mwseMCMCategory|mwseMCMComponent|mwseMCMCycleButton|mwseMCMDropdown|mwseMCMExclusionsPage|mwseMCMFilterPage|mwseMCMHyperlink|mwseMCMInfo|mwseMCMKeyBinder|mwseMCMMouseOverInfo|mwseMCMMouseOverPage|mwseMCMOnOffButton|mwseMCMPage|mwseMCMParagraphField|mwseMCMPercentageSlider|mwseMCMSetting|mwseMCMSideBarPage|mwseMCMSideBySideBlock|mwseMCMSlider|mwseMCMTemplate|mwseMCMTextField|mwseMCMYesNoButton|nil — *Optional*. No description yet available.
--- @return mwseMCMMouseOverPage page No description yet available.
function mwseMCMMouseOverPage:new(data) end

---Table parameter definitions for `mwseMCMMouseOverPage.new`.
--- @class mwseMCMMouseOverPage.new.data
--- @field showHeader boolean? *Default*: `false`. The page's label will only be created if set to true.
--- @field label string? *Optional*. The page label.
--- @field noScroll boolean? *Default*: `true`. When set to true, the page will not have a scrollbar. Particularly useful if you want to use a [ParagraphField](./mwseMCMParagraphField.md), which is not compatible with scroll panes.
--- @field components mwseMCMComponent.getComponent.componentData[]? *Optional*. Use this if you want to directly create all the nested components in this Page. This table is described at [getComponent](./mwseMCMPage.md#getcomponent).
--- @field indent integer? *Default*: `6`. The left padding size in pixels. Only used if the `childIndent` isn't set on the parent component.
--- @field childIndent integer? *Optional*. The left padding size in pixels. Used on all the child components.
--- @field paddingBottom integer? *Default*: `4`. The bottom border size in pixels. Only used if the `childSpacing` is unset on the parent component.
--- @field childSpacing integer? *Optional*. The bottom border size in pixels. Used on all the child components.
--- @field inGameOnly boolean? *Default*: `false`. No description yet available.
--- @field postCreate nil|fun(self: mwseMCMMouseOverPage) *Optional*. Can define a custom formatting function to make adjustments to any element saved in `self.elements`.
--- @field class string? *Optional*. No description yet available.
--- @field componentType string? *Optional*. No description yet available.
--- @field parentComponent mwseMCMActiveInfo|mwseMCMButton|mwseMCMCategory|mwseMCMComponent|mwseMCMCycleButton|mwseMCMDropdown|mwseMCMExclusionsPage|mwseMCMFilterPage|mwseMCMHyperlink|mwseMCMInfo|mwseMCMKeyBinder|mwseMCMMouseOverInfo|mwseMCMMouseOverPage|mwseMCMOnOffButton|mwseMCMPage|mwseMCMParagraphField|mwseMCMPercentageSlider|mwseMCMSetting|mwseMCMSideBarPage|mwseMCMSideBySideBlock|mwseMCMSlider|mwseMCMTemplate|mwseMCMTextField|mwseMCMYesNoButton|nil *Optional*. No description yet available.

