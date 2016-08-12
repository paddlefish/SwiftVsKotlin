package com.iconfactory.kotlinvsswifttemp

fun allExamples() {
	val nullable = NullableClassExample()
	nullable.f()

	MutableExample()
	MutableExample2()
	IterationExample()
	val x = EnumType.first
	val y = x.dynamicProperty
	x.enumsHaveFuncs()
	StringInterpolation()
	RuntimeInterop()
	TypeInference()
	Closure()
	When(MyEnum.starFruit)
	Foo(1).plus2()
	Foo(2.0).plus2()
}