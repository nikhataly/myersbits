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


User.create(email: "me@me.com", password: 'abcd', personality: Personality.first)
User.create(email: "sabina@gmail.com", password: 'abcd', personality: Personality.last)
# User.create(email: "erin@hotmail.com", password: 'abcd', personality_id: 4, name: "Erin")
# User.create(email: "nikhat@yahoo.com", password: 'abcd', personality_id: 1, name: "Nikhat")
# User.create(email: "frank@google.com", password: 'abcd', personality_id: 11, name: "Frank")


# Project.create(title: "Crowdfunder Practice Session", description: "Come work with me and build this app together, and learn rails, ajax, javascript, foundation!", start_date: "Tue, 30 June 2015", end_date: "Fri, 31 July 2015", location: "Bitmaker Labs", participants: 5, founder_id: 1, skills_required: "Ruby on Rails, JavaScript, HTML, CSS")
# Project.create(title: "SeatYourself project", description: "Come work with me and build this app together, and learn rails, ajax, javascript, foundation!", start_date: "Tue, 30 June 2015", end_date: "Fri, 31 July 2015", location: "Bitmaker Labs", participants: 5, founder_id: 2, skills_required: "Ruby on Rails, JavaScript, HTML, CSS")
# Project.create(title: "Codecademy Python Fundamentals", description: "Planning to go through the online Python course on Codecademy, looking for learning partners", start_date: "Tue, 30 June 2015", end_date: "Fri, 31 July 2015", location: "Bitmaker Labs",participants: 2, founder_id: 3, skills_required: "Basic object oriented programming skills (Python prefered)")
# Project.create(title: "Mars Rover challenge", description: "Working on Mars Rover challenge at Bitmaker Labs.", start_date: "Tue, 30 June 2015", end_date: "Fri, 31 July 2015", location: "Bitmaker Labs", participants: 3, founder_id: 4, skills_required: "Ruby on Rails")
# Project.create(title: "Learn jQuery Fundamentals", description: "Planning to go through Codecademy online course and practice jQuery", start_date: "Tue, 30 June 2015", end_date: "Fri, 31 July 2015", location: "Bitmaker Labs", participants: 4, founder_id: 5, skills_required: "Basic jQuery")
# Project.create(title: "Practice javascript frameworks", description: "Anybody interested in or familiar with recommended javascript frameworks?", start_date: "Tue, 30 June 2015", end_date: "Fri, 31 July 2015", location: "Bitmaker Labs", participants: 2, founder_id: 6, skills_required: "Basic Javascript")
# Project.create(title: "E-learning web application", description: "Looking for co-founders for an e-learning web app!", start_date: "Tue, 30 June 2015", end_date: "Fri, 31 July 2015", location: "Bitmaker Labs", participants: 1, founder_id: 7, skills_required: "Ruby on Rails, JavaScript, HTML, CSS")
# Project.create(title: "E-commerce web platform ", description: "Come work with me and build this app together, and learn rails, ajax, javascript, foundation!", start_date: "Tue, 30 June 2015", end_date: "Fri, 31 July 2015", location: "Bitmaker Labs", participants: 5, founder_id: 8, skills_required: "Ruby on Rails, JavaScript, HTML, CSS")
# Project.create(title: "Learning session Ruby on Rails Rubeque exercises", description: "Willing to work together with other junior web devs on polishing our Ruby skills with Rubeque", start_date: "Tue, 30 June 2015", end_date: "Fri, 31 July 2015", location: "Bitmaker Labs", participants: 2, founder_id: 9, skills_required: "Ruby on Rails")
# Project.create(title: "Curiculum Vitae Web developer", description: "Looking to polish my resume and getting a second opinion, willing to help back with resume", start_date: "Tue, 30 June 2015", end_date: "Fri, 31 July 2015", location: "Bitmaker Labs", participants: 3, founder_id: 10, skills_required: "Resume tips")

["Kindred", "Inspiring", "Complementing", "Challenging"].each do |n|
    Compatibility.create(title: n)
end

relationships = {
  isfp: {
    kindred: %i[isfp istp esfp isfj],
    inspiring: %i[infp estp esfj enfp],
    complementing: %i[istj intp infj enfj],
    challenging: %i[intj estj entp entj],
  },

  isfj: {
    kindred: %i[isfj infj esfj istj],
    inspiring: %i[isfp estj esfp enfj],
    complementing: %i[istp infp estp enfp],
    challenging: %i[intp intj entp entj],
  },

  intj: {
    kindred: %i[entj intp intj istj],
    inspiring: %i[infp infj entp enfj],
    complementing: %i[istp estp estj enfp],
    challenging: %i[isfp isfj esfp esfj],
  },

  intp: {
    kindred: %i[entp infp intj intp],
    inspiring: %i[istp infj entj enfp],
    complementing: %i[istj isfp estp enfj],
    challenging: %i[isfj estj esfp esfj],
  },

  infp: {
    kindred: %i[infj intp enfp infp],
    inspiring: %i[isfp intj entp enfj],
    complementing: %i[istp isfj esfp entj],
    challenging: %i[istj estp estj esfj],
  },

  infj: {
    kindred: %i[infj infp enfj isfj],
    inspiring: %i[isfp intp intj enfp],
    complementing: %i[istj esfj entp entj],
    challenging: %i[istp estp estj esfp],
  },

  istp: {
    kindred: %i[istp istj estp isfp],
    inspiring: %i[isfj intp estj esfp],
    complementing: %i[intj esfj entp entj],
    challenging: %i[infj infp enfj enfp],
  },

  istj: {
    kindred: %i[istj estj isfj istp],
    inspiring: %i[intj estp esfj entj],
    complementing: %i[isfp intp infj esfp],
    challenging: %i[infp entp enfp enfj],
  },

  entj: {
  kindred: %i[entj intj entp estj],
  inspiring: %i[istj intp enfp enfj],
  complementing: %i[istp infj estp esfj],
  challenging: %i[isfp isfj infp esfp],
 },

 entp: {
  kindred: %i[entp enfp intp entj],
  inspiring: %i[intj infp estp enfj],
  complementing: %i[istp infj estj esfp],
  challenging: %i[istj isfp isfj esfj],
 },

 estj: {
  kindred: %i[estj istj entj estp],
  inspiring: %i[istp intj esfp esfj],
  complementing: %i[isfj infj entp enfj],
  challenging: %i[isfp intp infp enfp],
 },

 estp: {
  kindred: %i[estp entp estj istp],
  inspiring: %i[istj esfp entj enfp],
  complementing: %i[isfp intj esfj enfj],
  challenging: %i[isfj intp infp infj],
 },

 enfj: {
  kindred: %i[enfj esfj infj enfp],
  inspiring: %i[intj infp entp entj],
  complementing: %i[isfj intp estj esfp],
  challenging: %i[istp istj isfp estp],
 },

 enfp: {
  kindred: %i[enfp entp enfj infp],
  inspiring: %i[intp infj esfp entj],
  complementing: %i[isfp intj estp esfj],
  challenging: %i[istp istj isfj estj],
 },

 esfj: {
  kindred: %i[esfj isfj esfp estj],
  inspiring: %i[istj isfp estp enfj],
  complementing: %i[istp infj entj enfp],
  challenging: %i[intp intj infp entp],
 },

 esfp: {
  kindred: %i[esfp estp isfp esfj],
  inspiring: %i[istp isfj enfp enfj],
  complementing: %i[istj infp estj entp],
  challenging: %i[intp intj infj entj],
 }
}


relationships.each do |primary_str, hash|
  primary = Personality.find_by_mbti(primary_str.upcase)
  hash.each do |compatibility_str, array|
    compatibility = Compatibility.find_by_title(compatibility_str.to_s.capitalize)
    array.each do |secondary_str|
      secondary = Personality.find_by_mbti(secondary_str.upcase)
      Relationship.create(primary: primary, compatibility: compatibility, secondary: secondary)
    end
  end
end

kindred = Compatibility.find_by_title("Kindred")
kindred.description = "People of the this personality type are more likely than most to share the your values, problem-solving style, and general approach to work. They won't necessarily agree on everything, and there's no guarantee they'll always get along, but they're more likely to feel an easy rapport and have generally take a similar perspective on important issues."
kindred.save


kindred = Compatibility.find_by_title("Inspiring")
kindred.description = "People of the this personality type are likely to strike you as similar in character, but with some key differences which may make them especially inspiring to work with. You may find that working with people of this type offers unique opportunities for growth. Work relationships between you and this type should have a good balance of commonalities and opportunities to share and benefit from fresh skills and perspectives."

kindred = Compatibility.find_by_title("Kindred")
kindred.description = "You may not feel an immediate rapport with people of this type, but once you get to know each other, you'll likely find you have some important things in common, as well as some things to teach one other. Although people of this type may not initially strike you as the most desirable coworkers, their relationships present a lot of potential to complement and learn from one other."
kindred.save

kindred = Compatibility.find_by_title("Kindred")
kindred.description = "People of the following type present the most potential for personality clash and conflict with your personality type, but also the best opportunities for growth. Because people of these types have fundamentally different values and motivations from your's, initially, it may seem impossible to relate. But because they are so different, their strengths are the your weaknesses, and if you are able to develop a healthy working relationship, you can learn a tremendous amount from each other."
kindred.save