package karate.request.Pet;

import com.intuit.karate.junit5.Karate;

public class DeletePet {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:karate/request/delete.feature").relativeTo(getClass());
    }
}
