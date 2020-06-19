package com.example.bookshelf.repository;

import com.example.bookshelf.model.Book;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path = "books")
public interface BookRepository extends CrudRepository<Book, Integer> {
}
