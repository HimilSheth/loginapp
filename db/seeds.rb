Channel.create!([
  {name: "Sports"},
  {name: "Games"},
  {name: "Startup"},
  {name: "Courses"},
  {name: "TinyOwl"},
  {name: "NewChannel"},
  {name: "Food"}
])
Comment.create!([
  {description: "Tutorials : RubyMonks", post_id: 4},
  {description: "Its easy ", post_id: 4},
  {description: "Happy", post_id: 4},
  {description: "Lolwa", post_id: 1},
  {description: "Versioning Tool", post_id: 9},
  {description: "Restaurant App ", post_id: 12},
  {description: "Started Learning ", post_id: 4},
  {description: "Best part time games", post_id: 3},
  {description: "Versioning Tool", post_id: 10},
  {description: "Hello!", post_id: 12},
  {description: "jdfklfd", post_id: 14},
  {description: "Integrated ", post_id: 14},
  {description: "testing testing !!!!!", post_id: 24}
])
Post.create!([
  {content: "Aloo Paratha", user_id: 1, channel_id: 8, upvote: 0},
  {content: "Test", user_id: 1, channel_id: 6, upvote: 0},
  {content: "India vs Bangladesh", user_id: 1, channel_id: 1, upvote: 2},
  {content: "Counter strike returns", user_id: 1, channel_id: 2, upvote: 1},
  {content: "Bootstrap CSS", user_id: 3, channel_id: 4, upvote: 0},
  {content: "Soccer", user_id: 1, channel_id: 1, upvote: 1},
  {content: "TinyOwl", user_id: 2, channel_id: 3, upvote: 3},
  {content: "Rails", user_id: 2, channel_id: 4, upvote: 1},
  {content: "Rugby", user_id: 1, channel_id: 1, upvote: 1},
  {content: "kfgskdgflh", user_id: 3, channel_id: 5, upvote: 1},
  {content: "HomeMade!", user_id: 3, channel_id: 5, upvote: 2},
  {content: "Panipuri", user_id: 6, channel_id: 8, upvote: 1},
  {content: "Chaat", user_id: 6, channel_id: 8, upvote: 1},
  {content: "Ruby", user_id: 2, channel_id: 4, upvote: 2},
  {content: "Git", user_id: 1, channel_id: 4, upvote: 2},
  {content: "Egg", user_id: 1, channel_id: 8, upvote: 0}
])
User.create!([
  {name: "Himil", email: "himilrocks34@gmail.com", password_digest: "$2a$10$O5.b40dsxvbvt4ZtEg4iDuwJp1Jxhn7FzAyKSMY8OtcUDzRw7HBqe"},
  {name: "jeel", email: "jeel@go.com", password_digest: "$2a$10$tumSPLm2NgDG6EAeR5bV/u9J4F2GtB1SPtVEs6pPOctPRV5czkGBe"},
  {name: "himil", email: "himilsheth07@gmail.com", password_digest: "$2a$10$6CQYFB3UBJq2zEz3fRQRM.OThTaBWODwoOvRRYdEbg.vuQunr6E7K"},
  {name: "himil", email: "himil@google.com", password_digest: "$2a$10$Z8C0akl/nchJD3qSJvgqR.Hvpig3RJ/RTdvF3xP32SOENxAGce7VC"},
  {name: "himil", email: "himilsheth@google.com", password_digest: "$2a$10$WOF9MziodkZCRhAD6SGHfO9QbfJpHXtFAdXNCfye1s.y/YUMOuehy"},
  {name: "test", email: "test123@gmail.com", password_digest: "$2a$10$abaz/PKWoVHn/p4Lc6eA4.eBc.UIQ2XXAuZv8ENnxTRqVqpZrCfpq"}
])
Vote.create!([
  {user_id: 1, post_id: 1},
  {user_id: 2, post_id: 1},
  {user_id: 2, post_id: 12},
  {user_id: 3, post_id: 4},
  {user_id: 3, post_id: 3},
  {user_id: 1, post_id: 12},
  {user_id: 1, post_id: 2},
  {user_id: 1, post_id: 10},
  {user_id: 3, post_id: 12},
  {user_id: 3, post_id: 5},
  {user_id: 3, post_id: 14},
  {user_id: 1, post_id: 18},
  {user_id: 1, post_id: 15},
  {user_id: 1, post_id: 14},
  {user_id: 6, post_id: 19},
  {user_id: 6, post_id: 20},
  {user_id: 5, post_id: 4},
  {user_id: 5, post_id: 10}
])
