const generateMemeBtn = document.querySelector(
    ".meme_gene .meme_buttn"
);
const memeImage = document.querySelector(".meme_gene img");
const memeTitle = document.querySelector(".meme_gene .meme_title");
const memeAuthor = document.querySelector(".meme_gene .meme_auth");

const updateDetails = (url, title, author) => {
    memeImage.setAttribute("src",url);
    memeTitle.innerHTML = title;
    memeAuthor.innerHTML = `meme by ${author}`;

}

const generateMeme = () => {
    fetch("https://meme-api.herokuapp.com/gimme/wholesomememes")
    .then((response) => response.json())
    .then(data => {
            updateDetails(data.url, data.title, data.author);
        });
};

generateMemeBtn.addEventListener("click", generateMeme);