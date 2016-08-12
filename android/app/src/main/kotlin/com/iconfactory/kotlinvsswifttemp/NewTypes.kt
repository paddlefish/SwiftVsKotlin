package com.iconfactory.kotlinvsswifttemp

enum class EnumType(val someInt: Int) {
	first(1),
	second(2),
	third(3);

	val dynamicProperty: String
		get() = if (this == first) {
			"first"
		} else {
			"$someInt is not first"
		}

	fun enumsHaveFuncs() : Boolean {
		return true
	}
}
