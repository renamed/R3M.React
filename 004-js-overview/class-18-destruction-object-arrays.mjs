import "./script.mjs"

const books = getBooks();

const book = getBook(2);

// const title = book.title;
// const author = book.author;
const { title, author, pages, publicationDate, genres, hasMovieAdaptation } = book;
console.log(author, title, genres);

// const primaryGenre = genres[0];
// const secondaryGenre = genres[1];
const [primaryGenre, secondaryGenre] = genres;
console.log(primaryGenre, secondaryGenre);