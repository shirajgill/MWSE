return {
	type = "function",
	description = [[Use [`tes3mobileActor:startCombat()`](https://mwse.github.io/MWSE/types/tes3mobileActor/#startcombat) instead. Wrapper for the StartCombat mwscript function.]],
	arguments = {{
		name = "params",
		type = "table",
		tableParams = {
			{ name = "reference", type = "tes3reference|tes3mobileActor|string", description = "The target reference for this command to be executed on. Defaults to the normal script execution reference.", optional = true },
			{ name = "target", type = "tes3reference|tes3mobileActor|string", description = "Actor to start combat with." },
		},
	}},
	returns = {{ name = "executed", type = "boolean" }},
}
