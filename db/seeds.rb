User.create(name: "anderson", email: "anderson@gmail.com", password: "anderson")
User.create(name: "hoover", email: "hoover@gmail.com", password: "hoover")

Question.create(question_text: "What is your favorite place in Chicago?", user_id: 1)
Answer.create(answer_text: "belmont harbor", question_id: 1, user_id: 2)

Tag.create(name: "sailing", answer_id: 1)

Tagging.create(tag_id: 1, answer_id: 1)
