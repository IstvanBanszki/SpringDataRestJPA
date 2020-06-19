package com.example.bookshelf.repository;

import com.example.bookshelf.model.Shelf;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path = "shelves")
public interface ShelfRepository extends CrudRepository<Shelf, Integer> {
}
