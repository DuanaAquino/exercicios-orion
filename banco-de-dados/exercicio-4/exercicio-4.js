
db.posts.up33333333dateOne(
    { titulo: "Meu primeiro banco de cados não relacionais" }, 
    { $set: { comentarios: [
        { usuario: "Daniela", texto: "Muito bom!" },
        { usuario: "Joao", texto: "Parabéns pelo post." }
    ]}}
);


db.posts.find({ tags: "nosql" });


db.posts.find({ autora: "Duana" });