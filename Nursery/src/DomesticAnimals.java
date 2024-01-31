import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class DomesticAnimals implements Animals {
    private String name;
    private LocalDate birthDate;
    private List<String> commands;

    public void DomesticAnimal(String name, LocalDate birthDate) {
        this.name = name;
        this.birthDate = birthDate;
        this.commands = new ArrayList<>();
    }
    
    @Override
    public void duties() {
        System.out.println("Help in the house");
    }
    
}
