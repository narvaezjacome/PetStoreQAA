package karate.user;
import com.intuit.karate.junit5.Karate;

public class CreateUser {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:Karate/request/user/01_CreateUser/create.feature").relativeTo(getClass());
    }
}