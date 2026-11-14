db.createCollection("posts");

db.posts.insertOne({
    titulo: "Meu primeiro banco de cados não relacionais",
    autora: "Duana",
    conteudo: "Hoje aprendi a criar bancos de dados não relacionais"
});


db.posts.insertOne({
    titulo: "O que é NoSQL?",
    autor: "Duana",
    conteudo: "Bancos não relacionais são muito flexíveis.",
    tags: ["nosql", "flexivel"]
});


db.posts.find();