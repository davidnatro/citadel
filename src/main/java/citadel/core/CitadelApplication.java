package citadel.core;

import java.util.HashSet;
import java.util.Set;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@SpringBootApplication
public class CitadelApplication {

  private static final Set<String> hashes = new HashSet<>();
  private static final PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

  public static void main(String[] args) {
    //    SpringApplication.run(CitadelApplication.class, args);
    String password = "password";
    String hash = passwordEncoder.encode(password);
    while (true) {
      String check = passwordEncoder.encode(password);
      if (passwordEncoder.matches(password, check)) {
        System.out.println("Matched");
      }
    }
  }
}
