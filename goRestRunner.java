package goRestRunner;

import com.intuit.karate.junit5.Karate;

public class goRestRunner {

    @Karate.Test
    Karate testgoRunner() {
        return Karate.run("gorest").relativeTo(getClass());
    }    

}
