package com.iconfactory.kotlinvsswifttemp

fun myFun(closure: (Int, Double) -> (Unit)) {
	closure(12, 12.3)
}
fun TypeInference() : List<Any> {
	val x:Map<String, Double> = mapOf("Foo" to 12.2)

	// val y:Map<String, Float> = mapOf("Foo" to 12.2)
	// Compile error: Kotlin determines type of 12.2 prior
	// to evaluating the expression.

	val z:Map<String, Float>
		= mapOf("Foo" to 12.2.toFloat())

	myFun { i, d ->
		print("Called with $i, $d")
	}

	return listOf(x, z)
}



