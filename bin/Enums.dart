enum EnumTest {
  FirstValue,
  SecondValue,
  ThirdValue
}

main () {
  EnumTest.values.forEach((v) => print(v));
}