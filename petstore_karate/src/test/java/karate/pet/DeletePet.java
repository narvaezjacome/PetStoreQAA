package karate.pet;

import com.intuit.karate.junit5.Karate;

public class DeletePet {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:Karate/request/pet/04_DeletePet/delete.feature").relativeTo(getClass());
    }
}
