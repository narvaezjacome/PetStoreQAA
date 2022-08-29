package karate.pet;
import com.intuit.karate.junit5.Karate;

public class AddPet {
    @Karate.Test
    Karate testSample(){return Karate.run("classpath:Karate/request/pet/01_AddPet/post.feature").relativeTo(getClass());
    }
}
