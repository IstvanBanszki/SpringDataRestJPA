package com.example.bookshelf;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;

import static org.hamcrest.Matchers.hasSize;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest(
		webEnvironment = SpringBootTest.WebEnvironment.MOCK,
		classes = BookshelfApplication.class
)
@AutoConfigureMockMvc
class BookshelfApplicationTests {

	@Autowired
	private MockMvc mockMvc;

	@Test
	void getAllUsers() throws Exception {
		// given
		// when
		mockMvc.perform(get("/api/users")
				.contentType(MediaType.APPLICATION_JSON))
		// then
				.andExpect(status().isOk())
				.andExpect(jsonPath("$._embedded.users", hasSize(3)));
	}

	@Test
	void getAllAuthors() throws Exception {
		// given
		// when
		mockMvc.perform(get("/api/authors")
				.contentType(MediaType.APPLICATION_JSON))
		// then
				.andExpect(status().isOk())
				.andExpect(jsonPath("$._embedded.authors", hasSize(5)));
	}

	@Test
	void getAllBooks() throws Exception {
		// given
		// when
		mockMvc.perform(get("/api/books")
				.contentType(MediaType.APPLICATION_JSON))
		// then
				.andExpect(status().isOk())
				.andExpect(jsonPath("$._embedded.books", hasSize(13)));
	}

	@Test
	void getAllShelves() throws Exception {
		// given
		// when
		mockMvc.perform(get("/api/shelves")
				.contentType(MediaType.APPLICATION_JSON))
		// then
				.andExpect(status().isOk())
				.andExpect(jsonPath("$._embedded.shelves", hasSize(12)));
	}
}
