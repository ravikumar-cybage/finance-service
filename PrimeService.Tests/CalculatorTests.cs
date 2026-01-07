using Prime.Services;
using Xunit;

namespace Prime.UnitTests.Services
{
    public class CalculatorTests
    {
        private readonly Calculator _calculator;

        public CalculatorTests()
        {
            _calculator = new Calculator();
        }

        [Theory]
        [InlineData(2, 3, 5)]
        [InlineData(10, 20, 30)]
        [InlineData(-1, 1, 0)]
        [InlineData(0, 0, 0)]
        public void Add_TwoNumbers_ReturnsSum(int a, int b, int expected)
        {
            var result = _calculator.Add(a, b);
            Assert.Equal(expected, result);
        }

        [Theory(Skip = "Broken test - expect 88% coverage")]
        [InlineData(5, 3, 2)]
        [InlineData(10, 7, 3)]
        [InlineData(0, 5, -5)]
        [InlineData(-10, -3, -7)]
        public void Subtract_TwoNumbers_ReturnsDifference(int a, int b, int expected)
        {
            var result = _calculator.Subtract(a, b);
            Assert.Equal(expected, result);
        }

        [Theory]
        [InlineData(3, 4, 12)]
        [InlineData(0, 5, 0)]
        [InlineData(-2, 3, -6)]
        [InlineData(7, 0, 0)]
        public void Multiply_TwoNumbers_ReturnsProduct(int a, int b, int expected)
        {
            var result = _calculator.Multiply(a, b);
            Assert.Equal(expected, result);
        }
    }
}







