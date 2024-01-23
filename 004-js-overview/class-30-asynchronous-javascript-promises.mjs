// import {getBook, getBooks} from './script.mjs'

// const books = getBooks();

// // 1) Add book to array
// const newBook = {
//     id: 6,
//     title: 'Harry Potter and the Chamber of Secrets',
//     author: 'J. K. Rowling'
// };

// const booksAfterAdd = [...books, newBook]
// console.log(booksAfterAdd)

// // 2) Delete book object from array
// const booksAfterDelete = booksAfterAdd.filter(el => el.id !== 3);
// console.log(booksAfterDelete)

// // 3) Update book object in the array
// const booksAfterUpdate = booksAfterDelete.map(el => el.id == 1 ? {...el, pages: 1210 } : el)
// console.log(booksAfterUpdate)

fetch("https://jsonplaceholder.typicode.com/todos")
    .then(res => res.json())
    .then(data => console.log(data));

console.log('renato')