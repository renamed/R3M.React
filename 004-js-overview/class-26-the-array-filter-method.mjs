import {getBook, getBooks} from './script.mjs'

const books = getBooks();

const longBooks = books
    .filter(el => el.pages > 500)
console.log(longBooks)

const longBooksWithMovies = books
    .filter(el => el.pages > 500)
    .filter(el => el.hasMovieAdaptation)
console.log(longBooksWithMovies)

const adventureBooks = books.filter(el => el.genres.includes("adventure")).map(el => el.title)
console.log(adventureBooks)