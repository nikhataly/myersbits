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

architect = Personality.find_by_mbti("INTP")
mastermind = Personality.find_by_mbti("INTJ")
champion = Personality.find_by_mbti("ENFP")

user1 = User.create(email: "me@me.com", password: 'abcd', personality_id: architect.id, name: "Minime")
user2 = User.create(email: "sabina@gmail.com", password: 'abcd', personality_id: mastermind.id, name: "Sabina")
user3 = User.create(email: "erin@hotmail.com", password: 'abcd', personality_id: champion.id, name: "Erin")
user4 = User.create(email: "nikhat@yahoo.com", password: 'abcd', personality_id: architect.id, name: "Nikhat")
user5 = User.create(email: "frank@google.com", password: 'abcd', personality_id: champion.id, name: "Frank")

Project.create(title: "Crowdfunder Practice Session", description: "Come work with me and build this app together, and learn rails, ajax, javascript, foundation!", start_date: "Tue, 30 June 2015", end_date: "Fri, 31 July 2015", location: "Bitmaker Labs", participants: 5, user_id: user1.id, skills_required: "Ruby on Rails, JavaScript, HTML, CSS")
Project.create(title: "SeatYourself project", description: "Come work with me and build this app together, and learn rails, ajax, javascript, foundation!", start_date: "Tue, 30 June 2015", end_date: "Fri, 31 July 2015", location: "Bitmaker Labs", participants: 5, user_id: user2.id, skills_required: "Ruby on Rails, JavaScript, HTML, CSS")
Project.create(title: "Codecademy Python Fundamentals", description: "Planning to go through the online Python course on Codecademy, looking for learning partners", start_date: "Tue, 30 June 2015", end_date: "Fri, 31 July 2015", location: "Bitmaker Labs",participants: 2, user_id: user3.id, skills_required: "Basic object oriented programming skills (Python prefered)")
Project.create(title: "Mars Rover challenge", description: "Working on Mars Rover challenge at Bitmaker Labs.", start_date: "Tue, 30 June 2015", end_date: "Fri, 31 July 2015", location: "Bitmaker Labs", participants: 3, user_id: user4.id, skills_required: "Ruby on Rails")
Project.create(title: "Learn jQuery Fundamentals", description: "Planning to go through Codecademy online course and practice jQuery", start_date: "Tue, 30 June 2015", end_date: "Fri, 31 July 2015", location: "Bitmaker Labs", participants: 4, user_id: user5.id, skills_required: "Basic jQuery")
Project.create(title: "Practice javascript frameworks", description: "Anybody interested in or familiar with recommended javascript frameworks?", start_date: "Tue, 30 June 2015", end_date: "Fri, 31 July 2015", location: "Bitmaker Labs", participants: 2, user_id: user1.id, skills_required: "Basic Javascript")
Project.create(title: "E-learning web application", description: "Looking for co-founders for an e-learning web app!", start_date: "Tue, 30 June 2015", end_date: "Fri, 31 July 2015", location: "Bitmaker Labs", participants: 1, user_id: user2.id, skills_required: "Ruby on Rails, JavaScript, HTML, CSS")
Project.create(title: "E-commerce web platform ", description: "Come work with me and build this app together, and learn rails, ajax, javascript, foundation!", start_date: "Tue, 30 June 2015", end_date: "Fri, 31 July 2015", location: "Bitmaker Labs", participants: 5, user_id: user3.id, skills_required: "Ruby on Rails, JavaScript, HTML, CSS")
Project.create(title: "Learning session Ruby on Rails Rubeque exercises", description: "Willing to work together with other junior web devs on polishing our Ruby skills with Rubeque", start_date: "Tue, 30 June 2015", end_date: "Fri, 31 July 2015", location: "Bitmaker Labs", participants: 2, user_id: user4.id, skills_required: "Ruby on Rails")
Project.create(title: "Curiculum Vitae Web developer", description: "Looking to polish my resume and getting a second opinion, willing to help back with resume", start_date: "Tue, 30 June 2015", end_date: "Fri, 31 July 2015", location: "Bitmaker Labs", participants: 3, user_id: user5.id, skills_required: "Resume tips")