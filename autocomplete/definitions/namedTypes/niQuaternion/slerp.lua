return {
	type = "method",
	description = [[Calculates a spherical linear interpolation between this quaternion and another.]],
	arguments = {
		{ name = "target", type = "niQuaternion", description = "The quaternion to interpolate towards." },
		{ name = "transition", type = "number", description = "The interpolation parameter. Must be between `0.0` (closer to this quaternion) and `1.0` (closer to the other quaternion)." },
	},
	returns = {
		{ name = "result", type = "niQuaternion", description = "The calculated result." },
	},
}
