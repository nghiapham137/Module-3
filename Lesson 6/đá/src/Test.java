public class Main {
    public static int totalOfTheMainDiagonal(int[][] arr) {
        int sum = 0;
        for (int i = 0; i < arr.length; i++) {
            for (int j = 0; j < arr[i].length; j++) {
                if (i == j) sum = sum + arr[i][j];
            }
        }
        return sum;
    }
    public static void main(String[] args) {
        int[][] arr = {
                {4,3,6,9,5},
                {7,6,5,4,8},
                {4,3,9,6,1},
                {8,4,2,6,5},
                {7,1,3,9,4}
        };
        System.out.println(totalOfTheMainDiagonal(arr));
    }
}
