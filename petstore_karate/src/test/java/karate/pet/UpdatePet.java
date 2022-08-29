package karate.pet;

import com.intuit.karate.junit5.Karate;

public class UpdatePet {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:Karate/request/pet/03_UpdatePet/put.feature").relativeTo(getClass());
    }
}
