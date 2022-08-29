package karate.user;

import com.intuit.karate.junit5.Karate;

public class LoginUser {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:Karate/request/user/02_LoginUser/login.feature").relativeTo(getClass());
    }
}
