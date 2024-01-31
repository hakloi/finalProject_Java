import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        boolean running = true;
        while (running) {
            System.out.println("===========================");
            System.out.println("\tNursery");
            System.out.println("===========================");
            System.out.println("1. Add new animal");
            System.out.println("2. Define type of the animal");
            System.out.println("3. List all animals");
            System.out.println("4. Train animal");
            System.out.println("5. Exit");
    
            System.out.print("Please enter your choice: ");
            int choice = sc.nextInt();
    
            switch (choice) {
                case 1:
                        // addNewAnimal();
                    System.out.println("Add");
                    break;
                case 2:
                        
                    System.out.println("Type");
                    break;
                case 3:
                    System.out.println("list all");
                    break;
                case 4:
                    System.out.println("train");
                    break;
                case 5:
                    running = false;
                    break;
                default:
                    System.out.println("Invalid choice, please try again.");
                    break;
            }
        }
    sc.close();
    }
}