# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  # cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
  # Mayor.create(name: 'Emanuel', city: cities.first)


 b = {
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
}

b.each do |mbti, title|
  Personality.create(mbti: mbti, title: title)
end







working_styles = {
  intp: {at_work:

  "At work, the INTP is motivated to solve complex problems in an original, innovative way. Architects want to analyze systems and ideas thoroughly to create deep understanding, and enjoy designing creative solutions to highly abstract problems.

  INTPs rarely have much interest in organizational traditions, preferring to forge their own path to innovation. They hate being limited by bureaucracy and rules, and are often more in tune with the theoretical soundness of their ideas than they are with the practical applications. They typically prefer to focus on creating the idea, and to leave the tedious details of implementation to someone else.

  INTPs work best independently or with a small team of colleagues that they perceive as smart, competent, and logical. They quickly tire of colleagues who are aggressive or overbearing, and can be dismissive of people who aren't as clever as themselves.

  An ideal organization for an INTP is flexible and non-traditional, and values ingenuity over conformity. An ideal job for an INTP allows them to address complex theoretical or technical problems with creative, novel solutions.",

  as_team:

  "INTPs are thoughtful, analytical team members who contribute a deep understanding of complex problems. They are often most interested in the theoretical questions behind the team’s goal, and can help the group to identify key principles and generate innovative ideas. They tend to engage with the vision of the team, analyzing it rationally and objectively and offering options and possibilities.

  INTPs do best on a team when they are given freedom to analyze logical problems in an original way. They are skilled at coming up with creative solutions, but don’t put much stock in the established way of doing things. Team members who are highly loyal to tradition may encounter friction with the INTP. Architects are typically independent thinkers who’d rather debate ideas than make small talk. They may become impatient if too much time is spent on pleasantries, and may put off team members who seek a more personal touch.",

  as_leader:

  "In leadership positions, INTPs inspire others with their intelligence and innovative ideas. INTP leaders are often unassuming on the surface but catch everyone's attention once they begin talking about their ideas. They generally allow their reports a lot of latitude, preferring to set the overall goal and trust their team to solve problems autonomously.

  INTPs enjoy exploring new possibilities and engaging in creative problem solving, but may sometimes get so caught up in the world of ideas that they neglect to lead their teams into action. They may have trouble hashing out details, and often leave it to someone else to create exact specifications. They do best leading competent, intellectually driven teams who understand their complex ideas and can fill in the details to create realistic plans of action."
  },

  intj: {at_work:

  "At work, the INTJ excels at creating and implementing innovative solutions to analytical problems. They naturally see possibilities for improvement within complex systems and are organized and determined in implementing their ideas for change.

  INTJs are comfortable with abstraction and theory but gain the most satisfaction from turning their ideas into reality. They often enjoy working independently or with a small team, taking measured, strategic steps to implement change.

  INTJs enjoy working with logical systems that they can understand in depth. They enjoy the challenge of comprehending complex ideas, and want to understand how they can improve the way things work.

  The ideal work environment for an INTJ is logical, efficient, structured, and analytical, with colleagues that are competent, intelligent, and productive. The ideal job for a Mastermind allows them to use their analytical skills to problem-solve in a challenging environment, and to take responsibility for implementing their ideas to create efficient, innovative systems.",

  as_team:

  "INTJs are analytical team members who focus on strategy. They are often perceptive about systems and how to improve them. They are thoughtful and clear in their analysis, and good at defining team goals. They are capable of synthesizing ideas of some complexity, and often see clearly to a unifying plan of action. INTJs take a characteristically critical approach, and analyze ideas and proposals with a detached, objective logic. They want to be free to make improvements to existing systems, and do best on a team where change is favored.

  INTJs are open to ideas, and will consider the perspectives of the team members with an even-handed approach. However, they are firm and clear in their logical analysis, and have little patience for nonsense. They are unlikely to offer support or assurance to teammates who they don’t perceive as useful contributors. They are persuasive in their reasoning and often get teammates on board based on the clarity of their ideas. However, they may have friction with team members who have a focus on relationships; the Mastermind seeks a free exchange of ideas, not a personal connection.",

  as_leader:

  "In leadership positions, INTJs are strategic, analytical planners and problem solvers. They are good at making tough decisions and sorting out complex issues. Masterminds excel at managing projects that implement a vision of improved efficiency or innovation, and although they usually prefer not to have to manage other people, they will take over if no other leader steps up. As leaders, they are democratic and hands-off: they generally prefer to share the overall goal and let their reports determine exactly how to complete their work.

  INTJs value competence and decisiveness, and may sometimes neglect to listen to differing opinions once their mind is made up. While they focus on creating logical and innovative solutions, they may sometimes leave out the details of their plans, leaving their teams to wonder exactly how things will be accomplished."
  },



  enfp: {at_work:

  "At work, the ENFP is concerned with using their creativity to express themselves and benefit others. ENFPs want to explore the possibilities for themselves and other people, and approach their work with vision and inspiration. They enjoy taking on creative or people-centered problems that call for an imaginative, original solution.

  ENFPs are often motivated by their beliefs in humanitarian causes and want work that is consistent with their values. They are particularly interested in helping other people develop as individuals. They tend to choose careers that allow them to pursue ideals of personal growth and artistic expression.

  ENFPs dislike routine work and want a variety of tasks and challenges. They prefer to set their own schedule and chafe when saddled with excessive regulations or mundane details. They seek out fun, novel tasks that allow them to be imaginative and relate to other people in an unstructured, supportive way.

  The ideal work environment for an ENFP is relaxed and friendly, with few restrictions on creativity. The ideal job for an ENFP allows them to follow their inspiration, satisfy their curiosity, and develop solutions that benefit people in innovative and original ways.",

  as_team:

  "ENFPs are enthusiastic, involved team members who are interested in exploring the possibilities for innovation. They enjoy relating to people and hearing their ideas—the more imaginative, the better. Although they are open-minded, they are fundamentally grounded in a sense of values, and look for the principles and motivations behind their teammates’ ideas. ENFPs have little interest in rules, and will encourage their teammates to think outside the box to create a solution that is uniquely theirs. They want to encourage other people to be creative and find their own voice.

  ENFPs are most focused on relationships and on ideas, and may have friction with more task-oriented teammates. They relish the task of brainstorming possibilities and options for a project, and are sometimes reluctant to settle on a course of action and move on. They typically shy away from taking on responsibility for details, and can best contribute to a team with their considerable interpersonal skills. They are energetic in their commitment to the group’s mission, and are often good at motivating others and encouraging them to use their talents.",

  as_leader:

  "In leadership positions, ENFPs convey enthusiasm and excitement for their ideas. Their leadership style tends to be democratic and flexible, with an eye toward developing human potential. They enjoy helping others grow as employees and as people, and grant plenty of freedom to their reports to develop innovative and unique solutions. ENFP leaders motivate with their passion for their ideas and beliefs, and they are often insightful in their assessments of people problems.

  Because they are so focused on their ideals, ENFP leaders can sometimes neglect the practicalities of implementation. They are more focused on people than on process, and can lose sight of the ultimate goal as they explore relationships and human development. They may need to develop planning and organizational skills to ensure that their creative ideas become reality."}
}

working_styles.each do |personality_str, hash|
  personality = Personality.find_by_mbti(personality_str.to_s.upcase)
  personality.at_work = hash[:at_work]
  personality.as_team = hash[:as_team]
  personality.as_leader = hash[:as_leader]
  personality.save
end




architect = Personality[:intp]
mastermind = Personality[:intj]
champion = Personality[:enfp]

champion.description = ["Love to talk about what is going on in their lives", "Will encourage their mates to grow", "Need to feel encouragement", "Don't like to say it when their feelings are hurt", "Tend to withdraw to process hurt feelings in private", "Need to hear how much they mean to someone", "Like spontaneous demonstrations of love and respect", "Under stress: may have difficulty saying no and take on too many projects"]
champion.save

architect.description = ["Flexible and adaptable", "Want to make sense of concepts, and the world", "Logical and analytical- want others to be logical", "May have great powers of concentration", "Like abstract and symbolic thinking", "Often non-traditional", "May be seen as aloof; out of touch with the world", "Under stress: may feel overwhelmed and misunderstood"]
architect.save

mastermind.description = ["Have assumptions about the way things could be (strong opinions)", "Need to be around other competent people", "Avoid interpersonal conflict, but love a spirited debate", "Can need to feel in control, and be inflexible", "Can appear to be challenging and insensitive (generally not true underneath)", "Tend to avoid emotional risks, tend to keep thoughts and insights to themselves", "They may appear stubborn", "Under stress: may become over-structured; paralyzed by seeking perfection before taking action"]
mastermind.save

[
  [{email: "me@me.com", password: 'abcd', personality: architect, name: "Minime"}, "einstein.jpeg"],
  [{email: "sabina@gmail.com", password: 'abcd', personality: mastermind, name: "Sabina"}, "githubphoto.jpg"],
  [{email: "grace@hotmail.com", password: 'abcd', personality: champion, name: "Grace"}, "grace_hopper.jpg"],
  [{email: "nikhat@yahoo.com", password: 'abcd', personality: architect, name: "Nikhat"}, "nikhat.jpg"],
  [{email: "frank@google.com", password: 'abcd', personality: champion, name: "Frank"}, "frank.jpg"],
].each_with_index do |(params, avatar_file), n|
  user = User.create(params)
  user.avatar.store!(open("app/assets/images/#{avatar_file}"))
  user.save!

  define_method "user#{n+1}" do
    user
  end
end




  project1 = Project.create(title: "Crowdfunder Practice Session", description: "Come work with me and build this app together, and learn rails, ajax, javascript, foundation!", start_date: 1.month.from_now, end_date: 2.month.from_now, location: "Bitmaker Labs", participants: 5, user_id: user1.id, address: "220 King St W, Suite 200
Toronto, Ontario M5H 1K4", skills_required: "Ruby on Rails, JavaScript, HTML, CSS")
Project.create(title: "SeatYourself project", description: "Come work with me and build this app together, and learn rails, ajax, javascript, foundation!", start_date: 1.month.from_now, end_date: 2.months.from_now, location: "Bitmaker Labs", participants: 5, user_id: user2.id, address: "250 University Avenue, Suite 400
Toronto, ON M5H 3E5", skills_required: "Ruby on Rails, JavaScript, HTML, CSS")
Project.create(title: "Codecademy Python Fundamentals", description: "Planning to go through the online Python course on Codecademy, looking for learning partners", start_date: 1.month.from_now, end_date: 2.months.from_now, location: "Bitmaker Labs",participants: 2, user_id: user3.id, address: "20 Camden St, Suite 200
Toronto, ON, Canada",skills_required: "Basic object oriented programming skills (Python prefered)")
Project.create(title: "Mars Rover challenge", description: "Working on Mars Rover challenge at Bitmaker Labs.", start_date: 1.month.from_now, end_date: 2.months.from_now, location: "Bitmaker Labs", participants: 3, user_id: user4.id, address: "425 Adelaide Street West, 3rd Floor
Toronto, ON M5V 3C1",skills_required: "Ruby on Rails")
Project.create(title: "Learn jQuery Fundamentals", description: "Planning to go through Codecademy online course and practice jQuery", start_date: 1.month.from_now, end_date: 2.months.from_now, location: "Bitmaker Labs", participants: 4, user_id: user5.id, address: "220 King St W, Suite 200
Toronto, Ontario M5H 1K4", skills_required: "Basic jQuery")
Project.create(title: "Practice javascript frameworks", description: "Anybody interested in or familiar with recommended javascript frameworks?", start_date: 1.month.from_now, end_date: 2.months.from_now, location: "Bitmaker Labs", participants: 2, user_id: user1.id, address: "220 King St W, Suite 200
Toronto, Ontario M5H 1K4",skills_required: "Basic Javascript")
Project.create(title: "E-learning web application", description: "Looking for co-founders for an e-learning web app!", start_date: 1.month.from_now, end_date: 2.months.from_now, location: "Bitmaker Labs", participants: 1, user_id: user2.id, address: "220 King St W, Suite 200
Toronto, Ontario M5H 1K4",skills_required: "Ruby on Rails, JavaScript, HTML, CSS")
Project.create(title: "E-commerce web platform ", description: "Come work with me and build this app together, and learn rails, ajax, javascript, foundation!", start_date: 1.month.from_now, end_date: 2.months.from_now, location: "Bitmaker Labs", participants: 5, user_id: user3.id, address: "220 King St W, Suite 200
Toronto, Ontario M5H 1K4",skills_required: "Ruby on Rails, JavaScript, HTML, CSS")
Project.create(title: "Learning session Ruby on Rails Rubeque exercises", description: "Willing to work together with other junior web devs on polishing our Ruby skills with Rubeque", start_date: 1.month.from_now, end_date: 2.months.from_now, location: "Bitmaker Labs", participants: 2, user_id: user4.id, address: "220 King St W, Suite 200
Toronto, Ontario M5H 1K4", skills_required: "Ruby on Rails")
Project.create(title: "Curiculum Vitae Web developer", description: "Looking to polish my resume and getting a second opinion, willing to help back with resume", start_date: 1.month.from_now, end_date: 2.months.from_now, location: "Bitmaker Labs", participants: 3, user_id: user5.id, address: "220 King St W, Suite 200
Toronto, Ontario M5H 1K4",skills_required: "Resume tips")


m1 = Membership.create(project_id: project1.id,  user_id: user2.id, approved: true)
m2 = Membership.create(project_id: project1.id,  user_id: user3.id, approved: true)
m3 = Membership.create(project_id: project1.id,  user_id: user4.id, approved: true)
m4 = Membership.create(project_id: project1.id,  user_id: user5.id, approved: true)
print "done"

# @sts = [
# "Server-Side",
# "Ruby",
# "Ruby on Rails 2.x, 3.x, 4.x  ( MVC rapid application development)",
# "Key Ruby on Rails Gems / methodologies",
# "Ruby Gem management",
# "Ruby Gem production",
# "Rapid coding: HAML, SASS, Textile, Markdown",
# "Authentication: authlogic, devise",
# "Cloud 'AWS', Services: http://amazon.rubyforge.org/ (Amazon S3, EC2), youtube_it",
# "Ecommerce: authorize_net",
# "Ruby on Rails CMS sytems",
# "Refinery",
# "Radiant",
# "Ruby on Rails Hosting",
# "Heroku",
# "HostMonster",
# "DreamHost",
# "RailsPlayground",
# "PHP 4/5",
# "PHP CMSs",
# "Wordpress (content management)",
# "Drupal (content management)",
# "Joomla (content management)",
# "PHP Frameworks",
# "Cake PHP (model view controller) ",
# "Zend Framework (model view controler)",
# "Smarty Framwork/Template Engine ",
# "Code Igniter (model view controler)",
# "Pear Repository",
# "MDB2  (Db abstraction)",
# "DB Table  (Active Record / DB objectification)",
# "HTML QuickForm  (High level form generation)",
# "Perl",
# "ASP ",
# "Python #",
# "VBScript",
# "Linux Command Line",
# "Database",
# "SQL ",
# "MySQL ",
# "SQLite(3)",
# "Postgres ",
# "MS Access (odbc) ",
# "Delimited text ",
# "Database abstraction",
# "PDO ",
# "Ruby Active Record ",
# "NoSQL",
# "MongoDB ",
# "Apache Server:",
# ".htaccess ",
# ".htpasswd ",
# "httpdconf ",
# "mod rewrite ",
# "Version Control",
# "Git",
# "Subversion ",
# "Web Services",
# "Amazon Services",
# "Amazon S3 (simple storage service) ",
# "Amazon SES API (simple email service)",
# "Server / System Administration",
# "Ubuntu Server",
# "CentOs",
# "RedHat",
# "VirtualMin",
# "Virtual Private Servers (VPS)",
# "Dedicated Servers",
# "EC2",
# "E-Commerce",
# "Authorize.net gateway API ",
# "Paypal integration ",
# "Google checkout integration",
# "Google wallet ",
# "SSL",
# "PCI data compliance",
# "Coding Tools/Editors",
# "VIM / GVIM (my favorite) ",
# "Netbeans ",
# "Dreamweaver",
# "NVU ",
# "Eclipse",
# "Go Live ",
# "Graphic Design, Photography, Audio Tools",
# "Applications",
# "Photoshop ",
# "Gimp ",
# "Freehand (vector) ",
# "Fireworks (vector) ",
# "Audacity (audio editor)",
# "Command Line Applications",
# "ImageMagick",
# "Client-Side",
# "Standard Fare",
# "(X)HTML",
# "HTML5 ",
# "Standards Compliance ",
# "Table-less markup and layout ",
# "HTML Forms (data collection and processing) ",
# "HAML - powerful HTML abstraction language ",
# "CSS2", "CSS3",
# "SASS - Powerfull CSS abstraction language ",
# "Compas - CSS 'framework' ",
# "Twitter Bootstrap - CSS/JS front-end framework ",
# "Zurb Foundation - CSS/JS front-end framework ",
# "Design style influenced heavily by CSS Zen Garden ",
# "Javascript (DOM) ",
# "Unobtrusive Javascript ",
# "CLient-Side Validation",
# "Asynchronous Javascript (AJAX) ",
# "Light Box (image viewer/gallery)",
# "FLowplayer (video player) ",
# "Backbone Js (front-end MVC) ",
# "Angular Js (front-end MVC)",
# "Javascript Frameworks",
# "JQuery ",
# "prototype ",
# "scriptaculous",
# "Mootools",
# "Flash",
# "Flash Actionscript 3",
# "Flash Animation ",
# "Flash vector graphics",
# "English ",
# "French ",
# "Spanish ",
# "Italian ",
# "Chinese ",
# "German "]

# def seed_me
#   @sts.each do |st|
#     Skill.create!(
#       name: st
#       )
#   end
# end

# seed_me

# {
#   "Kindred" => "People of the this personality type are more "
# }.each do |compat, descr|
#   Compat.create

{
  "Kindred" => "People of the this personality type are more likely than most to share the your values, problem-solving style, and general approach to work. They won't necessarily agree on everything, and there's no guarantee they'll always get along, but they're more likely to feel an easy rapport and have generally take a similar perspective on important issues.",
  "Inspiring" => "People of the this personality type are likely to strike you as similar in character, but with some key differences which may make them especially inspiring to work with. You may find that working with people of this type offers unique opportunities for growth. Work relationships between you and this type should have a good balance of commonalities and opportunities to share and benefit from fresh skills and perspectives.",
  "Complementing" => "You may not feel an immediate rapport with people of this type, but once you get to know each other, you'll likely find you have some important things in common, as well as some things to teach one other. Although people of this type may not initially strike you as the most desirable coworkers, their relationships present a lot of potential to complement and learn from one other.",
  "Challenging" => "People of the following type present the most potential for personality clash and conflict with your personality type, but also the best opportunities for growth. Because people of these types have fundamentally different values and motivations from your's, initially, it may seem impossible to relate. But because they are so different, their strengths are the your weaknesses, and if you are able to develop a healthy working relationship, you can learn a tremendous amount from each other.",
}.each do |title, desc|
    Compatibility.create(title: title, description: desc)
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

relationships.each do |primary_mbti, hash|
  primary = Personality[primary_mbti]
  hash.each do |title, secondary_mbtis|
    compatibility = Compatibility.find_by(title: title.to_s.capitalize)
    secondary_mbtis.each do |secondary_mbti|
      secondary = Personality[secondary_mbti]
      Relationship.create(primary: primary, compatibility: compatibility, secondary: secondary)
    end
  end
end


users = User.all
project = Project.last
users[1..-1].each { |u| project.memberships.create(user: u, approved: true) }





