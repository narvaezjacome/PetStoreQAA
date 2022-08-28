package User;
import com.intuit.karate.junit5.Karate;

public class CreateUser {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:Karate/request/create.feature").relativeTo(getClass());
    }
}