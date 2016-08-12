package com.iconfactory.kotlinvsswifttemp;

class NullableClassExample {
	val x: String
	val y: Int?

	constructor() {
		x = "hello"
		y = 12
	}

	fun f() : Int  {
		// self.x is never null
		// y might be null
		if (y != null) {
			// now we know y is not null
			return 42 + y
		}

		return 0
	}
}
