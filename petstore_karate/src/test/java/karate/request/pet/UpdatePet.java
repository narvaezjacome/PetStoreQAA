package karate.request.pet;

import com.intuit.karate.junit5.Karate;

public class UpdatePet {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:karate/request/put.feature").relativeTo(getClass());
    }
}
