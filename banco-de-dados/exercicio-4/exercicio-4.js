
db.posts.updateOne(
    { titulo: "Meu primeiro banco de dados não relacionais" }, 
    { $set: { comentarios: [
        { usuario: "Daniela", texto: "Muito bom!" },
        { usuario: "Joao", texto: "Parabéns pelo post." }
    ]}}
);


db.posts.find({ tags: "nosql" });


db.posts.find({ autor: "Duana" });