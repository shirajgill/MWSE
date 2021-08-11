--- @meta

--- This event is triggered when a sound is player by the game or when tes3.playSound is called. This event can be blocked.
--- @class addSoundEventData
--- @field block boolean If set to `true`, vanilla logic will be suppressed. Returning `false` will set this to `true`.
--- @field claim boolean If set to `true`, any lower-priority event callbacks will be skipped. Returning `false` will set this to `true`.
--- @field pitch number Pitch of the sound.
--- @field flags number 
--- @field sound tes3sound The sound going to be played.
--- @field volume number The volume of the sound. Volume = 1 means 100 % loudness. Values lower than 1 the sound quiter.
--- @field isVoiceover boolean 
--- @field reference tes3reference The reference which is emiting the sound.
