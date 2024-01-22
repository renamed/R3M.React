import "./script.mjs"

const book = getBook(1);

const { genres } = book;

const [primaryGenre, secondaryGenre, ...otherGenres] = genres;
console.log(primaryGenre, secondaryGenre, otherGenres);

const newGenres = [...genres, "epic fantasy"]
newGenres;

const updatedBook = { 
    ...book, 
    // adding a new property
    moviePublicationDate: "2001-12-19", 
    // overwritting an existing property
    pages: 1210 
};
updatedBook