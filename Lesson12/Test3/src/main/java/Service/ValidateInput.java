package Service;

public class ValidateInput {
    public boolean checkFloatInput(float input) {
        boolean isValid = false;
        if (input > 0) isValid = true;
        return isValid;
    }

    public boolean checkIntInput(int input) {
        boolean isValid = false;
        if (input > 0) isValid = true;
        return isValid;
    }

    public boolean checkStringInput(String input) {
        boolean isValid = false;
        if (!input.equals("")) isValid = true;
        return isValid;
    }
}
