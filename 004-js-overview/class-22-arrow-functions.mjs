import {getBook, getBooks, data} from './script.mjs'

const book = getBook(2);

const {pages, title, author, publicationDate, hasMovieAdaptation} = book;

const summary = `${title}, a ${pages}-pages long book, was written by ${author} and published in ${publicationDate.split('-')[0]}. The book has ${hasMovieAdaptation ? "" : "not "}been adapted as a movie.`;
console.log(summary)

const pagesRange = pages > 1000 ? 'over a thousand' : 'less than a thousand';

console.log(`The book has ${pagesRange}`);

function getYearLegacy(str) {
    return str.split('-')[0];
}

const getYear = str => str.split('-')[0];


console.log(getYearLegacy(publicationDate))
console.log(getYear(publicationDate))