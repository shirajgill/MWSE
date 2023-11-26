-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- A ParagraphField allows you to enter a multi-line of text. Press ++enter++ to submit or ++shift+enter++ to enter a new line.
--- @class mwseMCMParagraphField : mwseMCMTextField, mwseMCMSetting, mwseMCMComponent
--- @field buttonText string Unused for the Paragraph Field.
--- @field elements mwseMCMParagraphFieldElements This dictionary-style table holds all the UI elements of the ParagraphField, for easy access.
--- @field height integer|nil Fixes the height of the paragraph field to a custom value. The height is set on the `self.elements.scrollPane.parent.height` UI element.
--- @field minHeight nil Unused in Paragraph Field.
mwseMCMParagraphField = {}

--- Creates a new ParagraphField.
--- @param data mwseMCMParagraphField.new.data? This table accepts the following values:
--- 
--- `label`: string? — *Optional*. Text shown above the text field.
--- 
--- `variable`: mwseMCMConfigVariable|mwseMCMCustomVariable|mwseMCMGlobal|mwseMCMGlobalBoolean|mwseMCMPlayerData|mwseMCMTableVariable|mwseMCMVariable|mwseMCMSettingNewVariable|nil — *Optional*. Creates a variable of given class for this setting.
--- 
--- `numbersOnly`: boolean? — *Default*: `false`. If true, only numbers will be allowed in this TextField.
--- 
--- `description`: string? — *Optional*. If in a [Sidebar Page](../types/mwseMCMSideBarPage.md), the description will be shown on mouseover.
--- 
--- `height`: integer? — *Optional*. Fixes the height of the paragraph field to a custom value.
--- 
--- `sNewValue`: string? — *Optional*. The message shown after a new value is submitted. This can be formatted with a '%s' which will be replaced with the new value. The default text is a localized version of: "New value: '%s'".
--- 
--- `callback`: nil|fun(self: mwseMCMParagraphField) — *Optional*. This allows overriding the default implementation of this method
--- 
--- `inGameOnly`: boolean? — *Default*: `false`. If true, the setting is disabled while the game is on main menu.
--- 
--- `restartRequired`: boolean? — *Default*: `false`. If true, updating this Setting will notify the player to restart the game.
--- 
--- `restartRequiredMessage`: string? — *Optional*. The message shown if restartRequired is triggered. The default text is a localized version of: "The game must be restarted before this change will come into effect."
--- 
--- `indent`: integer? — *Default*: `12`. The left padding size in pixels. Only used if the `childIndent` isn't set on the parent component.
--- 
--- `childIndent`: integer? — *Optional*. The left padding size in pixels. Used on all the child components.
--- 
--- `paddingBottom`: integer? — *Default*: `4`. The bottom border size in pixels. Only used if the `childSpacing` is unset on the parent component.
--- 
--- `childSpacing`: integer? — *Optional*. The bottom border size in pixels. Used on all the child components.
--- 
--- `postCreate`: nil|fun(self: mwseMCMParagraphField) — *Optional*. Can define a custom formatting function to make adjustments to any element saved in `self.elements`.
--- 
--- `class`: string? — *Optional*. No description yet available.
--- 
--- `componentType`: string? — *Optional*. No description yet available.
--- 
--- `parentComponent`: mwseMCMActiveInfo|mwseMCMButton|mwseMCMCategory|mwseMCMComponent|mwseMCMCycleButton|mwseMCMDecimalSlider|mwseMCMDropdown|mwseMCMExclusionsPage|mwseMCMFilterPage|mwseMCMHyperlink|mwseMCMInfo|mwseMCMKeyBinder|mwseMCMMouseOverInfo|mwseMCMMouseOverPage|mwseMCMOnOffButton|mwseMCMPage|mwseMCMParagraphField|mwseMCMSetting|mwseMCMSideBarPage|mwseMCMSideBySideBlock|mwseMCMSlider|mwseMCMTemplate|mwseMCMTextField|mwseMCMYesNoButton|nil — *Optional*. No description yet available.
--- @return mwseMCMParagraphField paragraphField No description yet available.
function mwseMCMParagraphField:new(data) end

---Table parameter definitions for `mwseMCMParagraphField.new`.
--- @class mwseMCMParagraphField.new.data
--- @field label string? *Optional*. Text shown above the text field.
--- @field variable mwseMCMConfigVariable|mwseMCMCustomVariable|mwseMCMGlobal|mwseMCMGlobalBoolean|mwseMCMPlayerData|mwseMCMTableVariable|mwseMCMVariable|mwseMCMSettingNewVariable|nil *Optional*. Creates a variable of given class for this setting.
--- @field numbersOnly boolean? *Default*: `false`. If true, only numbers will be allowed in this TextField.
--- @field description string? *Optional*. If in a [Sidebar Page](../types/mwseMCMSideBarPage.md), the description will be shown on mouseover.
--- @field height integer? *Optional*. Fixes the height of the paragraph field to a custom value.
--- @field sNewValue string? *Optional*. The message shown after a new value is submitted. This can be formatted with a '%s' which will be replaced with the new value. The default text is a localized version of: "New value: '%s'".
--- @field callback nil|fun(self: mwseMCMParagraphField) *Optional*. This allows overriding the default implementation of this method
--- @field inGameOnly boolean? *Default*: `false`. If true, the setting is disabled while the game is on main menu.
--- @field restartRequired boolean? *Default*: `false`. If true, updating this Setting will notify the player to restart the game.
--- @field restartRequiredMessage string? *Optional*. The message shown if restartRequired is triggered. The default text is a localized version of: "The game must be restarted before this change will come into effect."
--- @field indent integer? *Default*: `12`. The left padding size in pixels. Only used if the `childIndent` isn't set on the parent component.
--- @field childIndent integer? *Optional*. The left padding size in pixels. Used on all the child components.
--- @field paddingBottom integer? *Default*: `4`. The bottom border size in pixels. Only used if the `childSpacing` is unset on the parent component.
--- @field childSpacing integer? *Optional*. The bottom border size in pixels. Used on all the child components.
--- @field postCreate nil|fun(self: mwseMCMParagraphField) *Optional*. Can define a custom formatting function to make adjustments to any element saved in `self.elements`.
--- @field class string? *Optional*. No description yet available.
--- @field componentType string? *Optional*. No description yet available.
--- @field parentComponent mwseMCMActiveInfo|mwseMCMButton|mwseMCMCategory|mwseMCMComponent|mwseMCMCycleButton|mwseMCMDecimalSlider|mwseMCMDropdown|mwseMCMExclusionsPage|mwseMCMFilterPage|mwseMCMHyperlink|mwseMCMInfo|mwseMCMKeyBinder|mwseMCMMouseOverInfo|mwseMCMMouseOverPage|mwseMCMOnOffButton|mwseMCMPage|mwseMCMParagraphField|mwseMCMSetting|mwseMCMSideBarPage|mwseMCMSideBySideBlock|mwseMCMSlider|mwseMCMTemplate|mwseMCMTextField|mwseMCMYesNoButton|nil *Optional*. No description yet available.

--- This method an event handler on tes3.uiEvent.keyEnter that calls `self:update()` if the pressed key was ++enter++. Inserts a newline into the paragraph input if the pressed combination was ++shift+enter++.
--- @param element tes3uiElement No description yet available.
function mwseMCMParagraphField:registerEnterKey(element) end

