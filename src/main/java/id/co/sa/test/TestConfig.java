package id.co.sa.test;

import id.co.sa.spring.PersistenceJPAConfig;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@ComponentScan({ "id.co.sa.persistence.dao" })
public class TestConfig extends PersistenceJPAConfig {

    @Bean
    public PasswordEncoder encoder() {
        return new BCryptPasswordEncoder(11);
    }

}
