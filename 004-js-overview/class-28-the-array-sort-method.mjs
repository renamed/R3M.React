import {getBook, getBooks} from './script.mjs'

const books = getBooks();

const arr = [3,7,1,9];
const sorted = arr.slice().sort();
console.log(sorted)
console.log(arr)

const sortedByPages = books.slice().sort((a, b) => a.pages - b.pages);
console.log(sortedByPages.map(el => ({title: el.title, pages: el.pages})));