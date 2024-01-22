import {getBook, getBooks} from './script.mjs'

const books = getBooks();

const pagesAllBooks = books.reduce((sum, book) => sum + book.pages, 0);
console.log(pagesAllBooks)