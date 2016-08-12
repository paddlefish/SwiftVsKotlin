package com.iconfactory.kotlinvsswifttemp

fun MutableExample2() :
			Map<String,String> {
	var version: Double = 2.0
	version += 1

	val langName: String = "Kotlin"
	val dict = mutableMapOf(
		"immutable" to "good",
		langName to "immutable",
		"∴ $langName" to "good"
	)
	dict[langName] = "quasi immutable"
	dict["∴ $langName"] = "quasi good"

	return dict
}


