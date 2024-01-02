import java.util.Scanner;
public class mult {   
        public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n;
        int m = 1;
        System.out.println("Input n: ");
        n = sc.nextInt();

        for (int i = 1; i <= n; i++) {
            m = i*n;
            System.out.println(n +" * " + i+ " = " + m );
        }
        sc.close();
    }


}
