return {
	type = "function",
	description = [[Wrapper for the `StopScript` mwscript function. It can only stop global scripts.]],
	arguments = {{
		name = "params",
		type = "table",
		tableParams = {
			{ name = "reference", type = "tes3reference|tes3mobileActor|string", description = "The target reference for this command to be executed on. Defaults to the normal script execution reference.", optional = true },
			{ name = "script", type = "tes3script|string" },
		},
	}},
	returns = {{ name = "executed", type = "boolean" }},
}
