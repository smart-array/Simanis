package id.co.sa.persistence.dao;

import id.co.sa.persistence.model.PasswordResetToken;
import id.co.sa.persistence.model.User;

import org.springframework.data.jpa.repository.JpaRepository;

public interface PasswordResetTokenRepository extends JpaRepository<PasswordResetToken, Long> {

    PasswordResetToken findByToken(String token);

    PasswordResetToken findByUser(User user);

}
