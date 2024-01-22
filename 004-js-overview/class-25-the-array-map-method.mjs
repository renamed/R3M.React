import {getBook, getBooks} from './script.mjs'

const books = getBooks();

const x = [1,2,3,4,5].map(el => el*2);
console.log(x);

const titles = books.map(book => book.title);
console.log(titles);

const essentialData = books.map(book => ({
        title: book.title,
        author: book.author,
        reviewsCount: book.reviews?.goodreads?.reviewsCount ?? 0 + book.reviews?.librarything?.reviewsCount ?? 0
    }
));

 console.log(essentialData);