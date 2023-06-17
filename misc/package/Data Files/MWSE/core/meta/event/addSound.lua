-- This file is autogenerated. Do not edit this file manually. Your changes will be ignored.
-- More information: https://github.com/MWSE/MWSE/tree/master/docs

--- @meta
--- This event is triggered when a sound is played by the game or when `tes3.playSound()` is called.
--- @class addSoundEventData
--- @field block boolean If set to `true`, vanilla logic will be suppressed. Returning `false` will set this to `true`.
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field flags number *Read-only*. A flag whether the sound is looping or not. 0 means the sound doesn't loop, 1 means the sound loops.
--- @field isVoiceover boolean A flag whether the sound is a voiced line, which are usually found in the Sound\Vo data folder.
--- @field pitch number The pitch-shift multiplier. For 22kHz audio (most typical) it can have the range [0.005, 4.5]; for 44kHz audio it can have the range [0.0025, 2.25].
--- @field reference tes3reference|nil The reference which is emiting the sound. Not all sounds are played on a reference, such as (un)reading weapon, book-up, and wind sounds.
--- @field sound tes3sound The sound going to be played.
--- @field volume number The volume of the sound. In range [1, 250].
