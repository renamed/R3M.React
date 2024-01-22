import {getBook, getBooks, data} from './script.mjs'

const book = getBook(2);

const {publicationDate, hasMovieAdaptation} = book;

function getYearLegacy(str) {
    return str.split('-')[0];
}

const getYear = str => str.split('-')[0];
console.log(getYearLegacy(publicationDate))
console.log(getYear(publicationDate))

console.log(true && "Some string"); // some string
console.log(false && "Some string"); // false

console.log(hasMovieAdaptation && "This movie has a value");

// falsy: 0, '', null, undefined
console.log('jonas' && 'Some strings'); // some string
console.log(0 && 'Some strings'); // 0

console.log(true || 'Some string'); // true
console.log(false || 'Some string'); // false

console.log(getBook(1).translations.spanish || "NOT TRANSLATED")
console.log(getBook(2).translations.spanish || "NOT TRANSLATED")


console.log(getBook(1).reviews.librarything.reviewsCount ?? "no data");
console.log(getBook(2).reviews.librarything.reviewsCount ?? "no data");