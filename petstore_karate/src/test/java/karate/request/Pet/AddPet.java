package karate.request.Pet;
import com.intuit.karate.junit5.Karate;

public class AddPet {
    @Karate.Test
    Karate testSample(){return Karate.run("classpath:karate/request/Post.feature").relativeTo(getClass());
    }
}
