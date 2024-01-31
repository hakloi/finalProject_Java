import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Nursery {
    private List<Animals> animals;
    private Scanner scanner;

    public Nursery() {
        this.animals = new ArrayList<>();
        this.scanner = new Scanner(System.in);
    }

    
}


// private void addNewAnimal() {
//     String name = getStringInput("Enter the animal name: ");
//     LocalDate birthDate = getBirthDateInput();
//     String type = getStringInput("Enter the animal type (domestic/pack): ");

//     if (type.equalsIgnoreCase("domestic")) {
//         addDomesticAnimal(name, birthDate);
//     } else if (type.equalsIgnoreCase("pack")) {
//         addPackAnimal(name, birthDate);
//     } else {
//         System.out.println("Invalid animal type, please try again.");
//     }
// }

// private void addDomesticAnimal(String name, LocalDate birthDate) {
//     String breed = getStringInput("Enter the animal breed: ");

//     String animalType = getStringInput(
//             "Enter the animal type (cat/dog/hamster): ");

//     if (animalType.equalsIgnoreCase("cat")) {
//         animals.add(new Cats(name, birthDate, breed));
//     } else if (animalType.equalsIgnoreCase("dog")) {
//         animals.add(new Dogs(name, birthDate, breed));
//     } else if (animalType.equalsIgnoreCase("hamster")) {
//         animals.add(new Hamsters(name, birthDate, breed));
//     } else {
//         System.out.println("Invalid animal type, please try again.");
//     }
// }

// private void addPackAnimal(String name, LocalDate birthDate) {
//     String species = getStringInput("Enter the animal species: ");

//     String animalType = getStringInput(
//             "Enter the animal type (horse/camel/donkey): ");

//     if (animalType.equalsIgnoreCase("horse")) {
//         animals.add(new Horses(name, birthDate, species));
//     } else if (animalType.equalsIgnoreCase("camel")) {
//         animals.add(new Camels(name, birthDate, species));
//     } else if (animalType.equalsIgnoreCase("donkey")) {
//         animals.add(new Donkeys(name, birthDate, species));
//     } else {
//         System.out.println("Invalid animal type, please try again.");
//     }
// }

// private void listAnimals() {
//     if (animals.isEmpty()) {
//         System.out.println("No animals registered yet.");
//         return;
//     }

//     System.out.println("Registered animals:");

//     for (Animals animal : animals) {
//         System.out.println(animal.getName() + " - " + animal.getClass().getSimpleName());
//     }
// }

// private void trainAnimal() {
//     if (animals.isEmpty()) {
//         System.out.println("No animals registered yet.");
//         return;
//     }

//     String animalName = getStringInput("Enter the name of the animal you want to train: ");

//     Animals animal = findAnimal(animalName);

//     if (animal == null) {
//         System.out.println("Animal not found.");