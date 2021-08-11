--- @meta

--- The simulate event occurs at the start of every frame, excluding when the game is paused or in menu mode.
--- @class simulateEventData
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field timestamp number The number of hours since the beginning of the 3rd Era (similar to the Unix Epoch).
--- @field menuMode boolean Always false, maintained only for consistency with the enterFrame event.
--- @field delta number The number of seconds since the last frame.
