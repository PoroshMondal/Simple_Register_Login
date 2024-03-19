package com.porosh.registerlogin.repository;

import com.porosh.registerlogin.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Integer> {
   Optional<User> findByUsername(String username);

}
