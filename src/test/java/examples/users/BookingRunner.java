package examples.users;

import com.intuit.karate.junit5.Karate;

class BookingRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("booking").relativeTo(getClass());
    }    

}
