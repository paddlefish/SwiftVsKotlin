package com.iconfactory.kotlinvsswifttemp

fun IterationExample() {
	for(character in "mouse") {
		println(character)
	}

	val aMap = mapOf(
		"hello" to "world",
		"dlrow" to "olleh"
	)
	for ((key, value) in aMap) {
		print("$key to $value")
	}
}






