import {getBook, getBooks, data} from './script.mjs'

const book = getBook(1);

const summary = `${book.title}, a ${book.pages}-pages long book, was written by ${book.author} and published in ${book.publicationDate} `;
console.log(summary)