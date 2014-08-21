Eblog.create(author: "Mike", title: "The Loud, Homeless Guy", content: "The loud, homeless guy shouting in the park during lunch, today, was feeling lonely.")

Eblog.create(author: "Peter", title: "Clerk Smiled", content: "The clerk at Peet's Coffee smiled at me today. I made her day a little brighter because I was nice to her. She probably wants a better job and she cherishes anyone who can make this one more satisfying.")

Eblog.create(author: "Mike", title: "My Hard Working Sister", content: "My sister works really hard at her job because it proves to herself that she is a capable person. Will she ever have enough proof?")

Keyword.create(tagname: "sad")
Keyword.create(tagname: "humorous")
Keyword.create(tagname: "happy")
Keyword.create(tagname: "determined")


eblog = Eblog.find(1)

sad = Keyword.find(1)

eblog.keywords << sad

