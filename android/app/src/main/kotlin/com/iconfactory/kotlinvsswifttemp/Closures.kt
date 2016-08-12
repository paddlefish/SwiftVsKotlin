package com.iconfactory.kotlinvsswifttemp

fun Closure() : List<(Int, String) -> Int> {

	val strlen: (String) -> Int = { it.length }

	val x = { x: Int, y: String ->
		42 + x + strlen(y)
		// Note: adding return is a syntax
		// error in Kotlin's closures
	}

	val z: (Int, String) -> Int = { x,y ->
		x * y.length
	}

	return listOf(
		{ w, str ->
			str.length + w
		}, z, x
	)
}
