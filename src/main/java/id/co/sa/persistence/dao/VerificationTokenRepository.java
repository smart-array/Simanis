package id.co.sa.persistence.dao;

import id.co.sa.persistence.model.User;
import id.co.sa.persistence.model.VerificationToken;

import org.springframework.data.jpa.repository.JpaRepository;

public interface VerificationTokenRepository extends JpaRepository<VerificationToken, Long> {

    VerificationToken findByToken(String token);

    VerificationToken findByUser(User user);

}
