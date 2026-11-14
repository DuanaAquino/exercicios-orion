db.createCollection("posts");

db.posts.insertOne({
    titulo: "Meu primeiro banco de dados não relacionais",
    autor: "Duana",
    conteudo: "Hoje aprendi a criar bancos de dados não relacionais"
});


db.posts.insertOne({
    titulo: "O que é NoSQL?",
    autor: "João",
    conteudo: "Bancos não relacionais são muito flexíveis.",
    tags: ["nosql", "flexivel"]
});


db.posts.find();