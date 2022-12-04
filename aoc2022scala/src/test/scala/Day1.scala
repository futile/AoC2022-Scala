package day1

// For more information on writing tests, see
// https://scalameta.org/munit/docs/getting-started.html
class Day1Tests extends munit.FunSuite {
  test("part 1 with example input") {
    val obtained = part1(exampleInput)
    val expected = 24000
    assertEquals(obtained, expected)
  }

  test("part 1 with full input") {
    val obtained = part1(fullInput)
    val expected = 72602
    assertEquals(obtained, expected)
  }

  test("part 2 with full input") {
    val obtained = part2(fullInput)
    val expected = 207410
    assertEquals(obtained, expected)
  }
}
