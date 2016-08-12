package com.iconfactory.kotlinvsswifttemp

enum class MyEnum(var special: Boolean) {
	macintosh(true),
	banana(false),
	starFruit(true)
}

fun When(value: MyEnum) : Int {
	when (value) {
		MyEnum.macintosh ->
			return if (value.special) { 13 }
			else { 42 }
		MyEnum.banana -> return 12
		MyEnum.starFruit -> return 42
	}
}
