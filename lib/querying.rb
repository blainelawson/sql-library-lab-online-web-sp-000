def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books
   JOIN series ON books.series_id = series.id
   WHERE series.id=(SELECT min(series.id) FROM series);"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters
   ORDER BY length(motto) DESC
   LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, count(*) AS species_count FROM characters
   GROUP BY species
   ORDER BY species_count DESC
   LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors
   JOIN series ON author_id = authors.id
   JOIN subgenres ON series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title, count(characters.species) FROM series
   JOIN characters ON characters.series_id = series.id
   GROUP BY characters.species
   ORDER BY count(characters.species)
   LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
end
