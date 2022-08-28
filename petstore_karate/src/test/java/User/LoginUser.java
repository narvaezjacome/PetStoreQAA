package User;

import com.intuit.karate.junit5.Karate;

public class LoginUser {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:Karate/request/login.feature").relativeTo(getClass());
    }
}
