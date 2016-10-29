# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.create([
  {
    category: "Giới thiệu",
    content: "Nội dung cần giới thiệu",
    friend_url: "gioi-thieu"
  },
  {
    category: "Giải thưởng",
    content: "Nội dung của giải thưởng",
    friend_url: "giai-thuong"
  },
  {
    category: "Thể lệ",
    content: "Nội dung của thể lệ",
    friend_url: "the-le"
  },
  {
    category: "Liên hệ",
    content: "Nội dung của Liên hệ",
    friend_url: "lien-he"
  }
])