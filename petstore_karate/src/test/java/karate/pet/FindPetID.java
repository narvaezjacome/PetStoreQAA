package karate.pet;

import com.intuit.karate.junit5.Karate;

public class FindPetID {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:Karate/request/pet/02_FindPetID/get.feature").relativeTo(getClass());
    }
}
