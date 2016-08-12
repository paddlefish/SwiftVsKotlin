package com.iconfactory.kotlinvsswifttemp

class Foo<T>(var num: T) {

}

fun Foo<Int>.plus2(): Int {
	return num + 2
}

fun Foo<Double>.plus2(): Double {
	return num + 2.0
}

// Dispatch is STATIC, not RUNTIME
// No elaborate WHERE clauses like Swift
// (Much easier to reason about)