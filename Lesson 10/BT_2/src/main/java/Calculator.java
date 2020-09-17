public class Calculator {
    public static float calculate(float firstOperand, float secondOperand, char operator) {
        float result = 0;
        switch (operator) {
            case '+':
                return result = firstOperand + secondOperand;
            case '-':
                return result = firstOperand - secondOperand;
            case '*':
                return result = firstOperand * secondOperand;
            case '/':
                if (secondOperand != 0) {
                    return result = firstOperand / secondOperand;
                }else {
                    throw new RuntimeException("Can't divide by zero!");
                }
            default:
                throw new RuntimeException("Invalid operator!");

        }
    }
}
