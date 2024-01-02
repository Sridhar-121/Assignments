import java.util.Scanner;

class sumOfn {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n;
        int sum = 0;
        System.out.println("Input n: ");
        n = sc.nextInt();

        for (int i = 1; i <= n; i++) {
            sum += i;
        }
        sc.close();
        System.out.println("Sum of the first " + n + " natural numbers is: " + sum);
    }
}
