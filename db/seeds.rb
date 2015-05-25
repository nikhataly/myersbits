# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


{ 
  "ISTJ" => "The Inspector",
  "ISFJ" => "The Protector",
  "INFJ" => "The Counselor",
  "INTJ" => "The Mastermind",
  "ISTP" => "The Craftsman",
  "ISFP" => "The Composer",
  "INFP" => "The Healer",
  "INTP" => "The Architect",
  "ESTP" => "The Dynamo",
  "ESFP" => "The Performer",
  "ENFP" => "The Champion",
  "ENTP" => "The Visionary",
  "ESTJ" => "The Supervisor",
  "ESFJ" => "The Provider",
  "ENFJ" => "The Teacher",
  "ENTJ" => "The Commander"
}.each do |mbti, title|
    Personality.create(mbti: mbti, title: title)
end

