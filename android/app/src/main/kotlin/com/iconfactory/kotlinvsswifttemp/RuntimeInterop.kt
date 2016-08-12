package com.iconfactory.kotlinvsswifttemp

fun RuntimeInterop() : Array<Any> {
	val any: Any = Object()
	val anInt: Int = 12
		// Same as Java int
	val string: String = java.lang.String(CharArray(0)) as String
	@Suppress("UNCHECKED_CAST")
	val map: Map<String, String> = java.util.HashMap<String, String>()
			as java.util.Map<String, String>
			as Map<String, String>

	return arrayOf(any, anInt, string, map)
}

