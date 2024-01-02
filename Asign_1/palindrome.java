import java.util.Scanner;

public class palindrome {
        public static void main(String[] args) {
            Scanner sc = new Scanner(System.in);
            System.out.println("enter a string");
            String n = sc.nextLine();

            if(isPali(n)){
                System.out.println("the string is a palindrome");
            }
            else {
                System.out.println("the string is not a Palindrome");
            }
            sc.close();
        }
    public static boolean isPali(String n){
        int length = n.length();
        for (int i = 0; i < length; i++) {
            if(n.charAt(i) != n.charAt(length - i - 1))
            {
                return false;
            }
            
            
            }
        return true;
    }
}
