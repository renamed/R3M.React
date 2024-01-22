import {getBook, getBooks, data} from './script.mjs'


console.log(getTotalReviewsCount(getBook(1)));
console.log(getTotalReviewsCount(getBook(2)));
console.log(getTotalReviewsCount(getBook(3)));

function getTotalReviewsCount(book) {
    const goodreads = book.reviews?.goodreads?.reviewsCount;
    const librarything = book.reviews?.librarything?.reviewsCount ?? 0;
    return goodreads + librarything;
}