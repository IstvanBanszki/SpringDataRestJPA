package com.example.bookshelf.repository;

import com.example.bookshelf.model.Author;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path = "authors")
public interface AuthorRepository extends CrudRepository<Author, Integer> {
}
