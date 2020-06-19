package com.example.bookshelf.repository;

import com.example.bookshelf.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path = "users")
public interface UserRepository extends CrudRepository<User, Integer> {
}
