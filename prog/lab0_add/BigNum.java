import java.util.Scanner;
import java.util.Vector;

public class BigNum{

    // Vector first_number = new Vector();
    // Vector second_number = new Vector();
    // byte operation;
    static int base = 1000000000;

    // public BigNum(String first_number, String second_number, String operation){
    // }

    private static Vector<int> str2vector(String num){
        Vector<int> number = new Vector<int>();
        if(num.charAt(0) == '-'){
            number.add(1);
            num = num.substring(1, num.length());
        }
        else{
            number.add(0);
        }
        for(int i = (int) num.length(); i > 0; i-=9){
            if(i < 9){
                number.add(Integer.parseInt(num.substring(0, i)));
            }
            else{
                number.add(Integer.parseInt(num.substring(i-9, i)));
            }
        }
        return number;
    }

    private static Vector add_nums(Vector a, Vector b){
        int left = 0;
        if((int) a.get(0) == (int) b.get(0)){
            for(int i = 1; i < Math.max(a.size(), b.size()) || left == 1; i++){
                if(i == a.size()){
                    a.add(0);
                }
                a.set(i, (int) a.get(i) + left + (int) (i < b.size() ? b.get(i) : 0));
                left = (int) a.get(i) >= base ? 1 : 0;
                if(left == 1) a.set(i, (int) a.get(i) - base);
            }
            if((int) a.get(a.size()-1) == 0){
                a.remove(a.size()-1);
            }
            return a;
        }
        else if(a.get(0) > b.get(0)){
            return substract_nums(b, a);
        }
        else{
            return substract_nums(a, b);
        }
    }
    private static Vector substract_nums(Vector a, Vector b){
        if((int) a.get(0) == (int) b.get(0)){
            return add_nums(a, b)
        }
        else if((int) a.get(0) > (int) b.get(0)){
            return substract_nums(b, a)
        }
        else{
            if(a.size() > b.size()){
                while(a.size() != b.size()){
                    b.add(0);
                }
            }
            else if(a.size() < b.size()){
                while(a.size() != b.size()){
                    a.add(0);
                }
            }
            int left = 0
            for(int i = 1; i < a.size() || left == 1; i++){
                a.set(i, (int) a.get(i) - left - (int) b.get(i));
                left = (int) a.get(i)
            }
        }
    }

    // Return true if a >= b
    private static boolean compare(Vector a, Vector b){
        if((int)a.get(0) > (int)b.get(0)){
            return false;
        }
        else if((int)a.get(0) == (int)b.get(0) && (int) a.get(0) == 1){
            
        }
        for(int i = 0; i)
        return flag;
    }

    private static String vec2str(Vector a){
        String output = (int) a.get(0) == 1 ? "-" : "";
        for(int i = a.size()-1; i > 0; i--){
            if(i == a.size()-1){
                output += a.get(i);
            }
            else{
                output += String.format("%09d", (int) a.get(i));
            }
        }
        return output;
    }

    public static void main(String[] args){
        Scanner scan = new Scanner(System.in);

        System.out.println("Enter the first number:");
        String first_number = scan.nextLine();

        // System.out.println("Enter operation (+,-,*):");
        // String operation = scan.nextLine();
        
        System.out.println("Enter the second operator:");
        String second_number = scan.nextLine();

        Vector<int> a = str2vector(first_number);
        Vector<int> b = str2vector(second_number);
        
        System.out.println("\n"+vec2str(add_nums(a, b)));
        //System.out.println(first_number + " " + operation + " " + second_number);
    }
}