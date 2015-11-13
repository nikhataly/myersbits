PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "compatibilities" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "description" varchar);
INSERT INTO "compatibilities" VALUES(1,'Kindred','2015-06-09 21:44:06.241883','2015-06-09 21:44:06.241883','People of the this personality type are more likely than most to share the your values, problem-solving style, and general approach to work. They won''t necessarily agree on everything, and there''s no guarantee they''ll always get along, but they''re more likely to feel an easy rapport and have generally take a similar perspective on important issues.');
INSERT INTO "compatibilities" VALUES(2,'Inspiring','2015-06-09 21:44:06.246387','2015-06-09 21:44:06.246387','People of the this personality type are likely to strike you as similar in character, but with some key differences which may make them especially inspiring to work with. You may find that working with people of this type offers unique opportunities for growth. Work relationships between you and this type should have a good balance of commonalities and opportunities to share and benefit from fresh skills and perspectives.');
INSERT INTO "compatibilities" VALUES(3,'Complementing','2015-06-09 21:44:06.250702','2015-06-09 21:44:06.250702','You may not feel an immediate rapport with people of this type, but once you get to know each other, you''ll likely find you have some important things in common, as well as some things to teach one other. Although people of this type may not initially strike you as the most desirable coworkers, their relationships present a lot of potential to complement and learn from one other.');
INSERT INTO "compatibilities" VALUES(4,'Challenging','2015-06-09 21:44:06.254692','2015-06-09 21:44:06.254692','People of the following type present the most potential for personality clash and conflict with your personality type, but also the best opportunities for growth. Because people of these types have fundamentally different values and motivations from your''s, initially, it may seem impossible to relate. But because they are so different, their strengths are the your weaknesses, and if you are able to develop a healthy working relationship, you can learn a tremendous amount from each other.');
CREATE TABLE "memberships" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "project_id" integer, "user_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "approved" boolean DEFAULT 'f');
INSERT INTO "memberships" VALUES(1,1,2,'2015-06-09 21:44:06.211895','2015-06-09 21:44:06.211895','t');
INSERT INTO "memberships" VALUES(2,1,3,'2015-06-09 21:44:06.216878','2015-06-09 21:44:06.216878','t');
INSERT INTO "memberships" VALUES(3,1,4,'2015-06-09 21:44:06.221649','2015-06-09 21:44:06.221649','t');
INSERT INTO "memberships" VALUES(4,1,5,'2015-06-09 21:44:06.226373','2015-06-09 21:44:06.226373','t');
INSERT INTO "memberships" VALUES(5,11,2,'2015-06-09 21:44:07.386516','2015-06-09 21:44:07.386516','t');
INSERT INTO "memberships" VALUES(6,11,3,'2015-06-09 21:44:07.390307','2015-06-09 21:44:07.390307','t');
INSERT INTO "memberships" VALUES(7,11,4,'2015-06-09 21:44:07.393787','2015-06-09 21:44:07.393787','t');
INSERT INTO "memberships" VALUES(8,11,5,'2015-06-09 21:44:07.397241','2015-06-09 21:44:07.397241','t');
INSERT INTO "memberships" VALUES(9,8,1,'2015-06-09 22:42:53.833450','2015-06-09 22:42:53.833450','f');
INSERT INTO "memberships" VALUES(10,10,1,'2015-06-15 20:02:38.708234','2015-06-15 20:02:38.708234','f');
INSERT INTO "memberships" VALUES(11,3,1,'2015-07-09 20:14:54.380909','2015-07-09 20:14:54.380909','f');
INSERT INTO "memberships" VALUES(12,7,1,'2015-11-13 18:00:22.013847','2015-11-13 18:00:22.013847','f');
CREATE TABLE "personalities" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "mbti" varchar, "title" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "as_leader" text, "as_team" text, "at_work" text, "traits" text, "description" text);
INSERT INTO "personalities" VALUES(1,'ISTJ','The Inspector','2015-06-09 21:44:02.943315','2015-06-09 21:44:02.943315',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "personalities" VALUES(2,'ISFJ','The Protector','2015-06-09 21:44:02.950187','2015-06-09 21:44:02.950187',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "personalities" VALUES(3,'INFJ','The Counselor','2015-06-09 21:44:02.954103','2015-06-09 21:44:02.954103',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "personalities" VALUES(4,'INTJ','The Mastermind','2015-06-09 21:44:02.957778','2015-06-09 21:44:03.052631','In leadership positions, INTJs are strategic, analytical planners and problem solvers. They are good at making tough decisions and sorting out complex issues. Masterminds excel at managing projects that implement a vision of improved efficiency or innovation, and although they usually prefer not to have to manage other people, they will take over if no other leader steps up. As leaders, they are democratic and hands-off: they generally prefer to share the overall goal and let their reports determine exactly how to complete their work.

  INTJs value competence and decisiveness, and may sometimes neglect to listen to differing opinions once their mind is made up. While they focus on creating logical and innovative solutions, they may sometimes leave out the details of their plans, leaving their teams to wonder exactly how things will be accomplished.','INTJs are analytical team members who focus on strategy. They are often perceptive about systems and how to improve them. They are thoughtful and clear in their analysis, and good at defining team goals. They are capable of synthesizing ideas of some complexity, and often see clearly to a unifying plan of action. INTJs take a characteristically critical approach, and analyze ideas and proposals with a detached, objective logic. They want to be free to make improvements to existing systems, and do best on a team where change is favored.

  INTJs are open to ideas, and will consider the perspectives of the team members with an even-handed approach. However, they are firm and clear in their logical analysis, and have little patience for nonsense. They are unlikely to offer support or assurance to teammates who they don’t perceive as useful contributors. They are persuasive in their reasoning and often get teammates on board based on the clarity of their ideas. However, they may have friction with team members who have a focus on relationships; the Mastermind seeks a free exchange of ideas, not a personal connection.','At work, the INTJ excels at creating and implementing innovative solutions to analytical problems. They naturally see possibilities for improvement within complex systems and are organized and determined in implementing their ideas for change.

  INTJs are comfortable with abstraction and theory but gain the most satisfaction from turning their ideas into reality. They often enjoy working independently or with a small team, taking measured, strategic steps to implement change.

  INTJs enjoy working with logical systems that they can understand in depth. They enjoy the challenge of comprehending complex ideas, and want to understand how they can improve the way things work.

  The ideal work environment for an INTJ is logical, efficient, structured, and analytical, with colleagues that are competent, intelligent, and productive. The ideal job for a Mastermind allows them to use their analytical skills to problem-solve in a challenging environment, and to take responsibility for implementing their ideas to create efficient, innovative systems.',NULL,'---
- Have assumptions about the way things could be (strong opinions)
- Need to be around other competent people
- Avoid interpersonal conflict, but love a spirited debate
- Can need to feel in control, and be inflexible
- Can appear to be challenging and insensitive (generally not true underneath)
- Tend to avoid emotional risks, tend to keep thoughts and insights to themselves
- They may appear stubborn
- ''Under stress: may become over-structured; paralyzed by seeking perfection before
  taking action''
');
INSERT INTO "personalities" VALUES(5,'ISTP','The Craftsman','2015-06-09 21:44:02.961896','2015-06-09 21:44:02.961896',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "personalities" VALUES(6,'ISFP','The Composer','2015-06-09 21:44:02.965577','2015-06-09 21:44:02.965577',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "personalities" VALUES(7,'INFP','The Healer','2015-06-09 21:44:02.969341','2015-06-09 21:44:02.969341',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "personalities" VALUES(8,'INTP','The Architect','2015-06-09 21:44:02.973671','2015-06-09 21:44:03.043908','In leadership positions, INTPs inspire others with their intelligence and innovative ideas. INTP leaders are often unassuming on the surface but catch everyone''s attention once they begin talking about their ideas. They generally allow their reports a lot of latitude, preferring to set the overall goal and trust their team to solve problems autonomously.

  INTPs enjoy exploring new possibilities and engaging in creative problem solving, but may sometimes get so caught up in the world of ideas that they neglect to lead their teams into action. They may have trouble hashing out details, and often leave it to someone else to create exact specifications. They do best leading competent, intellectually driven teams who understand their complex ideas and can fill in the details to create realistic plans of action.','INTPs are thoughtful, analytical team members who contribute a deep understanding of complex problems. They are often most interested in the theoretical questions behind the team’s goal, and can help the group to identify key principles and generate innovative ideas. They tend to engage with the vision of the team, analyzing it rationally and objectively and offering options and possibilities.

  INTPs do best on a team when they are given freedom to analyze logical problems in an original way. They are skilled at coming up with creative solutions, but don’t put much stock in the established way of doing things. Team members who are highly loyal to tradition may encounter friction with the INTP. Architects are typically independent thinkers who’d rather debate ideas than make small talk. They may become impatient if too much time is spent on pleasantries, and may put off team members who seek a more personal touch.','At work, the INTP is motivated to solve complex problems in an original, innovative way. Architects want to analyze systems and ideas thoroughly to create deep understanding, and enjoy designing creative solutions to highly abstract problems.

  INTPs rarely have much interest in organizational traditions, preferring to forge their own path to innovation. They hate being limited by bureaucracy and rules, and are often more in tune with the theoretical soundness of their ideas than they are with the practical applications. They typically prefer to focus on creating the idea, and to leave the tedious details of implementation to someone else.

  INTPs work best independently or with a small team of colleagues that they perceive as smart, competent, and logical. They quickly tire of colleagues who are aggressive or overbearing, and can be dismissive of people who aren''t as clever as themselves.

  An ideal organization for an INTP is flexible and non-traditional, and values ingenuity over conformity. An ideal job for an INTP allows them to address complex theoretical or technical problems with creative, novel solutions.',NULL,'---
- Flexible and adaptable
- Want to make sense of concepts, and the world
- Logical and analytical- want others to be logical
- May have great powers of concentration
- Like abstract and symbolic thinking
- Often non-traditional
- May be seen as aloof; out of touch with the world
- ''Under stress: may feel overwhelmed and misunderstood''
');
INSERT INTO "personalities" VALUES(9,'ESTP','The Dynamo','2015-06-09 21:44:02.977603','2015-06-09 21:44:02.977603',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "personalities" VALUES(10,'ESFP','The Performer','2015-06-09 21:44:02.981883','2015-06-09 21:44:02.981883',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "personalities" VALUES(11,'ENFP','The Champion','2015-06-09 21:44:02.986949','2015-06-09 21:44:03.035305','In leadership positions, ENFPs convey enthusiasm and excitement for their ideas. Their leadership style tends to be democratic and flexible, with an eye toward developing human potential. They enjoy helping others grow as employees and as people, and grant plenty of freedom to their reports to develop innovative and unique solutions. ENFP leaders motivate with their passion for their ideas and beliefs, and they are often insightful in their assessments of people problems.

  Because they are so focused on their ideals, ENFP leaders can sometimes neglect the practicalities of implementation. They are more focused on people than on process, and can lose sight of the ultimate goal as they explore relationships and human development. They may need to develop planning and organizational skills to ensure that their creative ideas become reality.','ENFPs are enthusiastic, involved team members who are interested in exploring the possibilities for innovation. They enjoy relating to people and hearing their ideas—the more imaginative, the better. Although they are open-minded, they are fundamentally grounded in a sense of values, and look for the principles and motivations behind their teammates’ ideas. ENFPs have little interest in rules, and will encourage their teammates to think outside the box to create a solution that is uniquely theirs. They want to encourage other people to be creative and find their own voice.

  ENFPs are most focused on relationships and on ideas, and may have friction with more task-oriented teammates. They relish the task of brainstorming possibilities and options for a project, and are sometimes reluctant to settle on a course of action and move on. They typically shy away from taking on responsibility for details, and can best contribute to a team with their considerable interpersonal skills. They are energetic in their commitment to the group’s mission, and are often good at motivating others and encouraging them to use their talents.','At work, the ENFP is concerned with using their creativity to express themselves and benefit others. ENFPs want to explore the possibilities for themselves and other people, and approach their work with vision and inspiration. They enjoy taking on creative or people-centered problems that call for an imaginative, original solution.

  ENFPs are often motivated by their beliefs in humanitarian causes and want work that is consistent with their values. They are particularly interested in helping other people develop as individuals. They tend to choose careers that allow them to pursue ideals of personal growth and artistic expression.

  ENFPs dislike routine work and want a variety of tasks and challenges. They prefer to set their own schedule and chafe when saddled with excessive regulations or mundane details. They seek out fun, novel tasks that allow them to be imaginative and relate to other people in an unstructured, supportive way.

  The ideal work environment for an ENFP is relaxed and friendly, with few restrictions on creativity. The ideal job for an ENFP allows them to follow their inspiration, satisfy their curiosity, and develop solutions that benefit people in innovative and original ways.',NULL,'---
- Love to talk about what is going on in their lives
- Will encourage their mates to grow
- Need to feel encouragement
- Don''t like to say it when their feelings are hurt
- Tend to withdraw to process hurt feelings in private
- Need to hear how much they mean to someone
- Like spontaneous demonstrations of love and respect
- ''Under stress: may have difficulty saying no and take on too many projects''
');
INSERT INTO "personalities" VALUES(12,'ENTP','The Visionary','2015-06-09 21:44:02.990886','2015-06-09 21:44:02.990886',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "personalities" VALUES(13,'ESTJ','The Supervisor','2015-06-09 21:44:02.994107','2015-06-09 21:44:02.994107',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "personalities" VALUES(14,'ESFJ','The Provider','2015-06-09 21:44:02.997296','2015-06-09 21:44:02.997296',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "personalities" VALUES(15,'ENFJ','The Teacher','2015-06-09 21:44:03.000317','2015-06-09 21:44:03.000317',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "personalities" VALUES(16,'ENTJ','The Commander','2015-06-09 21:44:03.003357','2015-06-09 21:44:03.003357',NULL,NULL,NULL,NULL,NULL);
CREATE TABLE "projects" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar, "description" text, "start_date" datetime, "end_date" datetime, "location" text, "user_id" integer, "type_id" integer, "participants" integer, "skills_required" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "address" varchar, "longitude" decimal(9,6), "latitude" decimal(9,6));
INSERT INTO "projects" VALUES(1,'Crowdfunder Practice Session','Come work with me and build this app together, and learn rails, ajax, javascript, foundation!','2015-06-30 00:00:00.000000','2015-07-31 00:00:00.000000','Bitmaker Labs',1,NULL,5,'Ruby on Rails, JavaScript, HTML, CSS','2015-06-09 21:44:05.195196','2015-06-09 21:44:05.195196','220 King St W, Suite 200
Toronto, Ontario M5H 1K4',-79.3870757,43.6472849);
INSERT INTO "projects" VALUES(2,'SeatYourself project','Come work with me and build this app together, and learn rails, ajax, javascript, foundation!','2015-06-30 00:00:00.000000','2015-07-31 00:00:00.000000','Bitmaker Labs',2,NULL,5,'Ruby on Rails, JavaScript, HTML, CSS','2015-06-09 21:44:05.385687','2015-06-09 21:44:05.385687','250 University Avenue, Suite 400
Toronto, ON M5H 3E5',-79.386983,43.6503224);
INSERT INTO "projects" VALUES(3,'Codecademy Python Fundamentals','Planning to go through the online Python course on Codecademy, looking for learning partners','2015-06-30 00:00:00.000000','2015-07-31 00:00:00.000000','Bitmaker Labs',3,NULL,2,'Basic object oriented programming skills (Python prefered)','2015-06-09 21:44:05.513035','2015-06-09 21:44:05.513035','20 Camden St, Suite 200
Toronto, ON, Canada',-79.3969086,43.6472868);
INSERT INTO "projects" VALUES(4,'Mars Rover challenge','Working on Mars Rover challenge at Bitmaker Labs.','2015-06-30 00:00:00.000000','2015-07-31 00:00:00.000000','Bitmaker Labs',4,NULL,3,'Ruby on Rails','2015-06-09 21:44:05.662223','2015-06-09 21:44:05.662223','425 Adelaide Street West, 3rd Floor
Toronto, ON M5V 3C1',-79.3977406,43.6460984);
INSERT INTO "projects" VALUES(5,'Learn jQuery Fundamentals','Planning to go through Codecademy online course and practice jQuery','2015-06-30 00:00:00.000000','2015-07-31 00:00:00.000000','Bitmaker Labs',5,NULL,4,'Basic jQuery','2015-06-09 21:44:05.806636','2015-06-09 21:44:05.806636','220 King St W, Suite 200
Toronto, Ontario M5H 1K4',-79.3870757,43.6472849);
INSERT INTO "projects" VALUES(6,'Practice javascript frameworks','Anybody interested in or familiar with recommended javascript frameworks?','2015-06-30 00:00:00.000000','2015-07-31 00:00:00.000000','Bitmaker Labs',1,NULL,2,'Basic Javascript','2015-06-09 21:44:05.876963','2015-06-09 21:44:05.876963','220 King St W, Suite 200
Toronto, Ontario M5H 1K4',-79.3870757,43.6472849);
INSERT INTO "projects" VALUES(7,'E-learning web application','Looking for co-founders for an e-learning web app!','2015-06-30 00:00:00.000000','2015-07-31 00:00:00.000000','Bitmaker Labs',2,NULL,1,'Ruby on Rails, JavaScript, HTML, CSS','2015-06-09 21:44:05.945733','2015-06-09 21:44:05.945733','220 King St W, Suite 200
Toronto, Ontario M5H 1K4',-79.3870757,43.6472849);
INSERT INTO "projects" VALUES(8,'E-commerce web platform ','Come work with me and build this app together, and learn rails, ajax, javascript, foundation!','2015-06-30 00:00:00.000000','2015-07-31 00:00:00.000000','Bitmaker Labs',3,NULL,5,'Ruby on Rails, JavaScript, HTML, CSS','2015-06-09 21:44:06.014550','2015-06-09 21:44:06.014550','220 King St W, Suite 200
Toronto, Ontario M5H 1K4',-79.3870757,43.6472849);
INSERT INTO "projects" VALUES(9,'Learning session Ruby on Rails Rubeque exercises','Willing to work together with other junior web devs on polishing our Ruby skills with Rubeque','2015-06-30 00:00:00.000000','2015-07-31 00:00:00.000000','Bitmaker Labs',4,NULL,2,'Ruby on Rails','2015-06-09 21:44:06.082808','2015-06-09 21:44:06.082808','220 King St W, Suite 200
Toronto, Ontario M5H 1K4',-79.3870757,43.6472849);
INSERT INTO "projects" VALUES(10,'Curiculum Vitae Web developer','Looking to polish my resume and getting a second opinion, willing to help back with resume','2015-06-30 00:00:00.000000','2015-07-31 00:00:00.000000','Bitmaker Labs',5,NULL,3,'Resume tips','2015-06-09 21:44:06.180246','2015-06-09 21:44:06.180246','220 King St W, Suite 200
Toronto, Ontario M5H 1K4',-79.3870757,43.6472849);
CREATE TABLE "recommendations" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "personality_id" varchar, "recommendation" varchar, "text" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "relationships" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "primary_id" integer, "compatibility_id" integer, "secondary_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "relationships" VALUES(1,6,1,6,'2015-06-09 21:44:06.272256','2015-06-09 21:44:06.272256');
INSERT INTO "relationships" VALUES(2,6,1,5,'2015-06-09 21:44:06.276366','2015-06-09 21:44:06.276366');
INSERT INTO "relationships" VALUES(3,6,1,10,'2015-06-09 21:44:06.280495','2015-06-09 21:44:06.280495');
INSERT INTO "relationships" VALUES(4,6,1,2,'2015-06-09 21:44:06.284634','2015-06-09 21:44:06.284634');
INSERT INTO "relationships" VALUES(5,6,2,7,'2015-06-09 21:44:06.288621','2015-06-09 21:44:06.288621');
INSERT INTO "relationships" VALUES(6,6,2,9,'2015-06-09 21:44:06.292235','2015-06-09 21:44:06.292235');
INSERT INTO "relationships" VALUES(7,6,2,14,'2015-06-09 21:44:06.295870','2015-06-09 21:44:06.295870');
INSERT INTO "relationships" VALUES(8,6,2,11,'2015-06-09 21:44:06.299873','2015-06-09 21:44:06.299873');
INSERT INTO "relationships" VALUES(9,6,3,1,'2015-06-09 21:44:06.303867','2015-06-09 21:44:06.303867');
INSERT INTO "relationships" VALUES(10,6,3,8,'2015-06-09 21:44:06.307463','2015-06-09 21:44:06.307463');
INSERT INTO "relationships" VALUES(11,6,3,3,'2015-06-09 21:44:06.311234','2015-06-09 21:44:06.311234');
INSERT INTO "relationships" VALUES(12,6,3,15,'2015-06-09 21:44:06.314711','2015-06-09 21:44:06.314711');
INSERT INTO "relationships" VALUES(13,6,4,4,'2015-06-09 21:44:06.318465','2015-06-09 21:44:06.318465');
INSERT INTO "relationships" VALUES(14,6,4,13,'2015-06-09 21:44:06.322337','2015-06-09 21:44:06.322337');
INSERT INTO "relationships" VALUES(15,6,4,12,'2015-06-09 21:44:06.326182','2015-06-09 21:44:06.326182');
INSERT INTO "relationships" VALUES(16,6,4,16,'2015-06-09 21:44:06.330332','2015-06-09 21:44:06.330332');
INSERT INTO "relationships" VALUES(17,2,1,2,'2015-06-09 21:44:06.335253','2015-06-09 21:44:06.335253');
INSERT INTO "relationships" VALUES(18,2,1,3,'2015-06-09 21:44:06.340117','2015-06-09 21:44:06.340117');
INSERT INTO "relationships" VALUES(19,2,1,14,'2015-06-09 21:44:06.345241','2015-06-09 21:44:06.345241');
INSERT INTO "relationships" VALUES(20,2,1,1,'2015-06-09 21:44:06.349038','2015-06-09 21:44:06.349038');
INSERT INTO "relationships" VALUES(21,2,2,6,'2015-06-09 21:44:06.353109','2015-06-09 21:44:06.353109');
INSERT INTO "relationships" VALUES(22,2,2,13,'2015-06-09 21:44:06.356889','2015-06-09 21:44:06.356889');
INSERT INTO "relationships" VALUES(23,2,2,10,'2015-06-09 21:44:06.360620','2015-06-09 21:44:06.360620');
INSERT INTO "relationships" VALUES(24,2,2,15,'2015-06-09 21:44:06.364288','2015-06-09 21:44:06.364288');
INSERT INTO "relationships" VALUES(25,2,3,5,'2015-06-09 21:44:06.368345','2015-06-09 21:44:06.368345');
INSERT INTO "relationships" VALUES(26,2,3,7,'2015-06-09 21:44:06.371907','2015-06-09 21:44:06.371907');
INSERT INTO "relationships" VALUES(27,2,3,9,'2015-06-09 21:44:06.375476','2015-06-09 21:44:06.375476');
INSERT INTO "relationships" VALUES(28,2,3,11,'2015-06-09 21:44:06.379163','2015-06-09 21:44:06.379163');
INSERT INTO "relationships" VALUES(29,2,4,8,'2015-06-09 21:44:06.383317','2015-06-09 21:44:06.383317');
INSERT INTO "relationships" VALUES(30,2,4,4,'2015-06-09 21:44:06.389895','2015-06-09 21:44:06.389895');
INSERT INTO "relationships" VALUES(31,2,4,12,'2015-06-09 21:44:06.395311','2015-06-09 21:44:06.395311');
INSERT INTO "relationships" VALUES(32,2,4,16,'2015-06-09 21:44:06.399628','2015-06-09 21:44:06.399628');
INSERT INTO "relationships" VALUES(33,4,1,16,'2015-06-09 21:44:06.405158','2015-06-09 21:44:06.405158');
INSERT INTO "relationships" VALUES(34,4,1,8,'2015-06-09 21:44:06.409947','2015-06-09 21:44:06.409947');
INSERT INTO "relationships" VALUES(35,4,1,4,'2015-06-09 21:44:06.413978','2015-06-09 21:44:06.413978');
INSERT INTO "relationships" VALUES(36,4,1,1,'2015-06-09 21:44:06.417525','2015-06-09 21:44:06.417525');
INSERT INTO "relationships" VALUES(37,4,2,7,'2015-06-09 21:44:06.421161','2015-06-09 21:44:06.421161');
INSERT INTO "relationships" VALUES(38,4,2,3,'2015-06-09 21:44:06.424589','2015-06-09 21:44:06.424589');
INSERT INTO "relationships" VALUES(39,4,2,12,'2015-06-09 21:44:06.428261','2015-06-09 21:44:06.428261');
INSERT INTO "relationships" VALUES(40,4,2,15,'2015-06-09 21:44:06.431749','2015-06-09 21:44:06.431749');
INSERT INTO "relationships" VALUES(41,4,3,5,'2015-06-09 21:44:06.435609','2015-06-09 21:44:06.435609');
INSERT INTO "relationships" VALUES(42,4,3,9,'2015-06-09 21:44:06.439123','2015-06-09 21:44:06.439123');
INSERT INTO "relationships" VALUES(43,4,3,13,'2015-06-09 21:44:06.442546','2015-06-09 21:44:06.442546');
INSERT INTO "relationships" VALUES(44,4,3,11,'2015-06-09 21:44:06.445989','2015-06-09 21:44:06.445989');
INSERT INTO "relationships" VALUES(45,4,4,6,'2015-06-09 21:44:06.449641','2015-06-09 21:44:06.449641');
INSERT INTO "relationships" VALUES(46,4,4,2,'2015-06-09 21:44:06.453077','2015-06-09 21:44:06.453077');
INSERT INTO "relationships" VALUES(47,4,4,10,'2015-06-09 21:44:06.456548','2015-06-09 21:44:06.456548');
INSERT INTO "relationships" VALUES(48,4,4,14,'2015-06-09 21:44:06.460469','2015-06-09 21:44:06.460469');
INSERT INTO "relationships" VALUES(49,8,1,12,'2015-06-09 21:44:06.464824','2015-06-09 21:44:06.464824');
INSERT INTO "relationships" VALUES(50,8,1,7,'2015-06-09 21:44:06.468640','2015-06-09 21:44:06.468640');
INSERT INTO "relationships" VALUES(51,8,1,4,'2015-06-09 21:44:06.472200','2015-06-09 21:44:06.472200');
INSERT INTO "relationships" VALUES(52,8,1,8,'2015-06-09 21:44:06.475629','2015-06-09 21:44:06.475629');
INSERT INTO "relationships" VALUES(53,8,2,5,'2015-06-09 21:44:06.479648','2015-06-09 21:44:06.479648');
INSERT INTO "relationships" VALUES(54,8,2,3,'2015-06-09 21:44:06.483185','2015-06-09 21:44:06.483185');
INSERT INTO "relationships" VALUES(55,8,2,16,'2015-06-09 21:44:06.487036','2015-06-09 21:44:06.487036');
INSERT INTO "relationships" VALUES(56,8,2,11,'2015-06-09 21:44:06.490973','2015-06-09 21:44:06.490973');
INSERT INTO "relationships" VALUES(57,8,3,1,'2015-06-09 21:44:06.495231','2015-06-09 21:44:06.495231');
INSERT INTO "relationships" VALUES(58,8,3,6,'2015-06-09 21:44:06.498740','2015-06-09 21:44:06.498740');
INSERT INTO "relationships" VALUES(59,8,3,9,'2015-06-09 21:44:06.502233','2015-06-09 21:44:06.502233');
INSERT INTO "relationships" VALUES(60,8,3,15,'2015-06-09 21:44:06.505739','2015-06-09 21:44:06.505739');
INSERT INTO "relationships" VALUES(61,8,4,2,'2015-06-09 21:44:06.509505','2015-06-09 21:44:06.509505');
INSERT INTO "relationships" VALUES(62,8,4,13,'2015-06-09 21:44:06.513099','2015-06-09 21:44:06.513099');
INSERT INTO "relationships" VALUES(63,8,4,10,'2015-06-09 21:44:06.516856','2015-06-09 21:44:06.516856');
INSERT INTO "relationships" VALUES(64,8,4,14,'2015-06-09 21:44:06.520584','2015-06-09 21:44:06.520584');
INSERT INTO "relationships" VALUES(65,7,1,3,'2015-06-09 21:44:06.524700','2015-06-09 21:44:06.524700');
INSERT INTO "relationships" VALUES(66,7,1,8,'2015-06-09 21:44:06.528548','2015-06-09 21:44:06.528548');
INSERT INTO "relationships" VALUES(67,7,1,11,'2015-06-09 21:44:06.532301','2015-06-09 21:44:06.532301');
INSERT INTO "relationships" VALUES(68,7,1,7,'2015-06-09 21:44:06.536021','2015-06-09 21:44:06.536021');
INSERT INTO "relationships" VALUES(69,7,2,6,'2015-06-09 21:44:06.540073','2015-06-09 21:44:06.540073');
INSERT INTO "relationships" VALUES(70,7,2,4,'2015-06-09 21:44:06.543489','2015-06-09 21:44:06.543489');
INSERT INTO "relationships" VALUES(71,7,2,12,'2015-06-09 21:44:06.547176','2015-06-09 21:44:06.547176');
INSERT INTO "relationships" VALUES(72,7,2,15,'2015-06-09 21:44:06.550881','2015-06-09 21:44:06.550881');
INSERT INTO "relationships" VALUES(73,7,3,5,'2015-06-09 21:44:06.554548','2015-06-09 21:44:06.554548');
INSERT INTO "relationships" VALUES(74,7,3,2,'2015-06-09 21:44:06.557958','2015-06-09 21:44:06.557958');
INSERT INTO "relationships" VALUES(75,7,3,10,'2015-06-09 21:44:06.561554','2015-06-09 21:44:06.561554');
INSERT INTO "relationships" VALUES(76,7,3,16,'2015-06-09 21:44:06.564943','2015-06-09 21:44:06.564943');
INSERT INTO "relationships" VALUES(77,7,4,1,'2015-06-09 21:44:06.568858','2015-06-09 21:44:06.568858');
INSERT INTO "relationships" VALUES(78,7,4,9,'2015-06-09 21:44:06.572610','2015-06-09 21:44:06.572610');
INSERT INTO "relationships" VALUES(79,7,4,13,'2015-06-09 21:44:06.576159','2015-06-09 21:44:06.576159');
INSERT INTO "relationships" VALUES(80,7,4,14,'2015-06-09 21:44:06.579658','2015-06-09 21:44:06.579658');
INSERT INTO "relationships" VALUES(81,3,1,3,'2015-06-09 21:44:06.583503','2015-06-09 21:44:06.583503');
INSERT INTO "relationships" VALUES(82,3,1,7,'2015-06-09 21:44:06.586891','2015-06-09 21:44:06.586891');
INSERT INTO "relationships" VALUES(83,3,1,15,'2015-06-09 21:44:06.590771','2015-06-09 21:44:06.590771');
INSERT INTO "relationships" VALUES(84,3,1,2,'2015-06-09 21:44:06.594276','2015-06-09 21:44:06.594276');
INSERT INTO "relationships" VALUES(85,3,2,6,'2015-06-09 21:44:06.597986','2015-06-09 21:44:06.597986');
INSERT INTO "relationships" VALUES(86,3,2,8,'2015-06-09 21:44:06.601307','2015-06-09 21:44:06.601307');
INSERT INTO "relationships" VALUES(87,3,2,4,'2015-06-09 21:44:06.604997','2015-06-09 21:44:06.604997');
INSERT INTO "relationships" VALUES(88,3,2,11,'2015-06-09 21:44:06.608445','2015-06-09 21:44:06.608445');
INSERT INTO "relationships" VALUES(89,3,3,1,'2015-06-09 21:44:06.612212','2015-06-09 21:44:06.612212');
INSERT INTO "relationships" VALUES(90,3,3,14,'2015-06-09 21:44:06.615631','2015-06-09 21:44:06.615631');
INSERT INTO "relationships" VALUES(91,3,3,12,'2015-06-09 21:44:06.619229','2015-06-09 21:44:06.619229');
INSERT INTO "relationships" VALUES(92,3,3,16,'2015-06-09 21:44:06.622732','2015-06-09 21:44:06.622732');
INSERT INTO "relationships" VALUES(93,3,4,5,'2015-06-09 21:44:06.626527','2015-06-09 21:44:06.626527');
INSERT INTO "relationships" VALUES(94,3,4,9,'2015-06-09 21:44:06.630118','2015-06-09 21:44:06.630118');
INSERT INTO "relationships" VALUES(95,3,4,13,'2015-06-09 21:44:06.634007','2015-06-09 21:44:06.634007');
INSERT INTO "relationships" VALUES(96,3,4,10,'2015-06-09 21:44:06.637753','2015-06-09 21:44:06.637753');
INSERT INTO "relationships" VALUES(97,5,1,5,'2015-06-09 21:44:06.641763','2015-06-09 21:44:06.641763');
INSERT INTO "relationships" VALUES(98,5,1,1,'2015-06-09 21:44:06.645375','2015-06-09 21:44:06.645375');
INSERT INTO "relationships" VALUES(99,5,1,9,'2015-06-09 21:44:06.648949','2015-06-09 21:44:06.648949');
INSERT INTO "relationships" VALUES(100,5,1,6,'2015-06-09 21:44:06.652445','2015-06-09 21:44:06.652445');
INSERT INTO "relationships" VALUES(101,5,2,2,'2015-06-09 21:44:06.656188','2015-06-09 21:44:06.656188');
INSERT INTO "relationships" VALUES(102,5,2,8,'2015-06-09 21:44:06.659621','2015-06-09 21:44:06.659621');
INSERT INTO "relationships" VALUES(103,5,2,13,'2015-06-09 21:44:06.663029','2015-06-09 21:44:06.663029');
INSERT INTO "relationships" VALUES(104,5,2,10,'2015-06-09 21:44:06.666564','2015-06-09 21:44:06.666564');
INSERT INTO "relationships" VALUES(105,5,3,4,'2015-06-09 21:44:06.670300','2015-06-09 21:44:06.670300');
INSERT INTO "relationships" VALUES(106,5,3,14,'2015-06-09 21:44:06.673715','2015-06-09 21:44:06.673715');
INSERT INTO "relationships" VALUES(107,5,3,12,'2015-06-09 21:44:06.677295','2015-06-09 21:44:06.677295');
INSERT INTO "relationships" VALUES(108,5,3,16,'2015-06-09 21:44:06.680856','2015-06-09 21:44:06.680856');
INSERT INTO "relationships" VALUES(109,5,4,3,'2015-06-09 21:44:06.684710','2015-06-09 21:44:06.684710');
INSERT INTO "relationships" VALUES(110,5,4,7,'2015-06-09 21:44:06.688329','2015-06-09 21:44:06.688329');
INSERT INTO "relationships" VALUES(111,5,4,15,'2015-06-09 21:44:06.691842','2015-06-09 21:44:06.691842');
INSERT INTO "relationships" VALUES(112,5,4,11,'2015-06-09 21:44:06.695253','2015-06-09 21:44:06.695253');
INSERT INTO "relationships" VALUES(113,1,1,1,'2015-06-09 21:44:06.699510','2015-06-09 21:44:06.699510');
INSERT INTO "relationships" VALUES(114,1,1,13,'2015-06-09 21:44:06.703102','2015-06-09 21:44:06.703102');
INSERT INTO "relationships" VALUES(115,1,1,2,'2015-06-09 21:44:06.706463','2015-06-09 21:44:06.706463');
INSERT INTO "relationships" VALUES(116,1,1,5,'2015-06-09 21:44:06.710167','2015-06-09 21:44:06.710167');
INSERT INTO "relationships" VALUES(117,1,2,4,'2015-06-09 21:44:06.713941','2015-06-09 21:44:06.713941');
INSERT INTO "relationships" VALUES(118,1,2,9,'2015-06-09 21:44:06.717389','2015-06-09 21:44:06.717389');
INSERT INTO "relationships" VALUES(119,1,2,14,'2015-06-09 21:44:06.721085','2015-06-09 21:44:06.721085');
INSERT INTO "relationships" VALUES(120,1,2,16,'2015-06-09 21:44:06.724847','2015-06-09 21:44:06.724847');
INSERT INTO "relationships" VALUES(121,1,3,6,'2015-06-09 21:44:06.728809','2015-06-09 21:44:06.728809');
INSERT INTO "relationships" VALUES(122,1,3,8,'2015-06-09 21:44:06.733055','2015-06-09 21:44:06.733055');
INSERT INTO "relationships" VALUES(123,1,3,3,'2015-06-09 21:44:06.736775','2015-06-09 21:44:06.736775');
INSERT INTO "relationships" VALUES(124,1,3,10,'2015-06-09 21:44:06.740164','2015-06-09 21:44:06.740164');
INSERT INTO "relationships" VALUES(125,1,4,7,'2015-06-09 21:44:06.744426','2015-06-09 21:44:06.744426');
INSERT INTO "relationships" VALUES(126,1,4,12,'2015-06-09 21:44:06.748105','2015-06-09 21:44:06.748105');
INSERT INTO "relationships" VALUES(127,1,4,11,'2015-06-09 21:44:06.751600','2015-06-09 21:44:06.751600');
INSERT INTO "relationships" VALUES(128,1,4,15,'2015-06-09 21:44:06.755493','2015-06-09 21:44:06.755493');
INSERT INTO "relationships" VALUES(129,16,1,16,'2015-06-09 21:44:06.759463','2015-06-09 21:44:06.759463');
INSERT INTO "relationships" VALUES(130,16,1,4,'2015-06-09 21:44:06.762956','2015-06-09 21:44:06.762956');
INSERT INTO "relationships" VALUES(131,16,1,12,'2015-06-09 21:44:06.766891','2015-06-09 21:44:06.766891');
INSERT INTO "relationships" VALUES(132,16,1,13,'2015-06-09 21:44:06.770426','2015-06-09 21:44:06.770426');
INSERT INTO "relationships" VALUES(133,16,2,1,'2015-06-09 21:44:06.774475','2015-06-09 21:44:06.774475');
INSERT INTO "relationships" VALUES(134,16,2,8,'2015-06-09 21:44:06.778446','2015-06-09 21:44:06.778446');
INSERT INTO "relationships" VALUES(135,16,2,11,'2015-06-09 21:44:06.781932','2015-06-09 21:44:06.781932');
INSERT INTO "relationships" VALUES(136,16,2,15,'2015-06-09 21:44:06.785503','2015-06-09 21:44:06.785503');
INSERT INTO "relationships" VALUES(137,16,3,5,'2015-06-09 21:44:06.789671','2015-06-09 21:44:06.789671');
INSERT INTO "relationships" VALUES(138,16,3,3,'2015-06-09 21:44:06.793425','2015-06-09 21:44:06.793425');
INSERT INTO "relationships" VALUES(139,16,3,9,'2015-06-09 21:44:06.796954','2015-06-09 21:44:06.796954');
INSERT INTO "relationships" VALUES(140,16,3,14,'2015-06-09 21:44:06.800712','2015-06-09 21:44:06.800712');
INSERT INTO "relationships" VALUES(141,16,4,6,'2015-06-09 21:44:06.804737','2015-06-09 21:44:06.804737');
INSERT INTO "relationships" VALUES(142,16,4,2,'2015-06-09 21:44:06.808549','2015-06-09 21:44:06.808549');
INSERT INTO "relationships" VALUES(143,16,4,7,'2015-06-09 21:44:06.812453','2015-06-09 21:44:06.812453');
INSERT INTO "relationships" VALUES(144,16,4,10,'2015-06-09 21:44:06.816074','2015-06-09 21:44:06.816074');
INSERT INTO "relationships" VALUES(145,12,1,12,'2015-06-09 21:44:06.820699','2015-06-09 21:44:06.820699');
INSERT INTO "relationships" VALUES(146,12,1,11,'2015-06-09 21:44:06.824552','2015-06-09 21:44:06.824552');
INSERT INTO "relationships" VALUES(147,12,1,8,'2015-06-09 21:44:06.828188','2015-06-09 21:44:06.828188');
INSERT INTO "relationships" VALUES(148,12,1,16,'2015-06-09 21:44:06.831788','2015-06-09 21:44:06.831788');
INSERT INTO "relationships" VALUES(149,12,2,4,'2015-06-09 21:44:06.835902','2015-06-09 21:44:06.835902');
INSERT INTO "relationships" VALUES(150,12,2,7,'2015-06-09 21:44:06.840070','2015-06-09 21:44:06.840070');
INSERT INTO "relationships" VALUES(151,12,2,9,'2015-06-09 21:44:06.843721','2015-06-09 21:44:06.843721');
INSERT INTO "relationships" VALUES(152,12,2,15,'2015-06-09 21:44:06.847584','2015-06-09 21:44:06.847584');
INSERT INTO "relationships" VALUES(153,12,3,5,'2015-06-09 21:44:06.851887','2015-06-09 21:44:06.851887');
INSERT INTO "relationships" VALUES(154,12,3,3,'2015-06-09 21:44:06.855618','2015-06-09 21:44:06.855618');
INSERT INTO "relationships" VALUES(155,12,3,13,'2015-06-09 21:44:06.859643','2015-06-09 21:44:06.859643');
INSERT INTO "relationships" VALUES(156,12,3,10,'2015-06-09 21:44:06.863513','2015-06-09 21:44:06.863513');
INSERT INTO "relationships" VALUES(157,12,4,1,'2015-06-09 21:44:06.867512','2015-06-09 21:44:06.867512');
INSERT INTO "relationships" VALUES(158,12,4,6,'2015-06-09 21:44:06.871379','2015-06-09 21:44:06.871379');
INSERT INTO "relationships" VALUES(159,12,4,2,'2015-06-09 21:44:06.875056','2015-06-09 21:44:06.875056');
INSERT INTO "relationships" VALUES(160,12,4,14,'2015-06-09 21:44:06.878570','2015-06-09 21:44:06.878570');
INSERT INTO "relationships" VALUES(161,13,1,13,'2015-06-09 21:44:06.883068','2015-06-09 21:44:06.883068');
INSERT INTO "relationships" VALUES(162,13,1,1,'2015-06-09 21:44:06.886876','2015-06-09 21:44:06.886876');
INSERT INTO "relationships" VALUES(163,13,1,16,'2015-06-09 21:44:06.890752','2015-06-09 21:44:06.890752');
INSERT INTO "relationships" VALUES(164,13,1,9,'2015-06-09 21:44:06.894844','2015-06-09 21:44:06.894844');
INSERT INTO "relationships" VALUES(165,13,2,5,'2015-06-09 21:44:06.898906','2015-06-09 21:44:06.898906');
INSERT INTO "relationships" VALUES(166,13,2,4,'2015-06-09 21:44:06.902483','2015-06-09 21:44:06.902483');
INSERT INTO "relationships" VALUES(167,13,2,10,'2015-06-09 21:44:06.906948','2015-06-09 21:44:06.906948');
INSERT INTO "relationships" VALUES(168,13,2,14,'2015-06-09 21:44:06.910672','2015-06-09 21:44:06.910672');
INSERT INTO "relationships" VALUES(169,13,3,2,'2015-06-09 21:44:06.914764','2015-06-09 21:44:06.914764');
INSERT INTO "relationships" VALUES(170,13,3,3,'2015-06-09 21:44:06.919076','2015-06-09 21:44:06.919076');
INSERT INTO "relationships" VALUES(171,13,3,12,'2015-06-09 21:44:06.922589','2015-06-09 21:44:06.922589');
INSERT INTO "relationships" VALUES(172,13,3,15,'2015-06-09 21:44:06.925852','2015-06-09 21:44:06.925852');
INSERT INTO "relationships" VALUES(173,13,4,6,'2015-06-09 21:44:06.929539','2015-06-09 21:44:06.929539');
INSERT INTO "relationships" VALUES(174,13,4,8,'2015-06-09 21:44:06.933019','2015-06-09 21:44:06.933019');
INSERT INTO "relationships" VALUES(175,13,4,7,'2015-06-09 21:44:06.936540','2015-06-09 21:44:06.936540');
INSERT INTO "relationships" VALUES(176,13,4,11,'2015-06-09 21:44:06.940017','2015-06-09 21:44:06.940017');
INSERT INTO "relationships" VALUES(177,9,1,9,'2015-06-09 21:44:06.943969','2015-06-09 21:44:06.943969');
INSERT INTO "relationships" VALUES(178,9,1,12,'2015-06-09 21:44:06.947221','2015-06-09 21:44:06.947221');
INSERT INTO "relationships" VALUES(179,9,1,13,'2015-06-09 21:44:06.950656','2015-06-09 21:44:06.950656');
INSERT INTO "relationships" VALUES(180,9,1,5,'2015-06-09 21:44:06.953985','2015-06-09 21:44:06.953985');
INSERT INTO "relationships" VALUES(181,9,2,1,'2015-06-09 21:44:06.957507','2015-06-09 21:44:06.957507');
INSERT INTO "relationships" VALUES(182,9,2,10,'2015-06-09 21:44:06.960900','2015-06-09 21:44:06.960900');
INSERT INTO "relationships" VALUES(183,9,2,16,'2015-06-09 21:44:06.964083','2015-06-09 21:44:06.964083');
INSERT INTO "relationships" VALUES(184,9,2,11,'2015-06-09 21:44:06.967338','2015-06-09 21:44:06.967338');
INSERT INTO "relationships" VALUES(185,9,3,6,'2015-06-09 21:44:06.971533','2015-06-09 21:44:06.971533');
INSERT INTO "relationships" VALUES(186,9,3,4,'2015-06-09 21:44:06.975219','2015-06-09 21:44:06.975219');
INSERT INTO "relationships" VALUES(187,9,3,14,'2015-06-09 21:44:06.978663','2015-06-09 21:44:06.978663');
INSERT INTO "relationships" VALUES(188,9,3,15,'2015-06-09 21:44:06.982200','2015-06-09 21:44:06.982200');
INSERT INTO "relationships" VALUES(189,9,4,2,'2015-06-09 21:44:06.986114','2015-06-09 21:44:06.986114');
INSERT INTO "relationships" VALUES(190,9,4,8,'2015-06-09 21:44:06.989636','2015-06-09 21:44:06.989636');
INSERT INTO "relationships" VALUES(191,9,4,7,'2015-06-09 21:44:06.993079','2015-06-09 21:44:06.993079');
INSERT INTO "relationships" VALUES(192,9,4,3,'2015-06-09 21:44:06.996475','2015-06-09 21:44:06.996475');
INSERT INTO "relationships" VALUES(193,15,1,15,'2015-06-09 21:44:07.000315','2015-06-09 21:44:07.000315');
INSERT INTO "relationships" VALUES(194,15,1,14,'2015-06-09 21:44:07.003949','2015-06-09 21:44:07.003949');
INSERT INTO "relationships" VALUES(195,15,1,3,'2015-06-09 21:44:07.007496','2015-06-09 21:44:07.007496');
INSERT INTO "relationships" VALUES(196,15,1,11,'2015-06-09 21:44:07.010868','2015-06-09 21:44:07.010868');
INSERT INTO "relationships" VALUES(197,15,2,4,'2015-06-09 21:44:07.014392','2015-06-09 21:44:07.014392');
INSERT INTO "relationships" VALUES(198,15,2,7,'2015-06-09 21:44:07.017873','2015-06-09 21:44:07.017873');
INSERT INTO "relationships" VALUES(199,15,2,12,'2015-06-09 21:44:07.021239','2015-06-09 21:44:07.021239');
INSERT INTO "relationships" VALUES(200,15,2,16,'2015-06-09 21:44:07.024489','2015-06-09 21:44:07.024489');
INSERT INTO "relationships" VALUES(201,15,3,2,'2015-06-09 21:44:07.028349','2015-06-09 21:44:07.028349');
INSERT INTO "relationships" VALUES(202,15,3,8,'2015-06-09 21:44:07.031770','2015-06-09 21:44:07.031770');
INSERT INTO "relationships" VALUES(203,15,3,13,'2015-06-09 21:44:07.035040','2015-06-09 21:44:07.035040');
INSERT INTO "relationships" VALUES(204,15,3,10,'2015-06-09 21:44:07.038574','2015-06-09 21:44:07.038574');
INSERT INTO "relationships" VALUES(205,15,4,5,'2015-06-09 21:44:07.042284','2015-06-09 21:44:07.042284');
INSERT INTO "relationships" VALUES(206,15,4,1,'2015-06-09 21:44:07.045716','2015-06-09 21:44:07.045716');
INSERT INTO "relationships" VALUES(207,15,4,6,'2015-06-09 21:44:07.049066','2015-06-09 21:44:07.049066');
INSERT INTO "relationships" VALUES(208,15,4,9,'2015-06-09 21:44:07.052362','2015-06-09 21:44:07.052362');
INSERT INTO "relationships" VALUES(209,11,1,11,'2015-06-09 21:44:07.056118','2015-06-09 21:44:07.056118');
INSERT INTO "relationships" VALUES(210,11,1,12,'2015-06-09 21:44:07.059529','2015-06-09 21:44:07.059529');
INSERT INTO "relationships" VALUES(211,11,1,15,'2015-06-09 21:44:07.062841','2015-06-09 21:44:07.062841');
INSERT INTO "relationships" VALUES(212,11,1,7,'2015-06-09 21:44:07.075408','2015-06-09 21:44:07.075408');
INSERT INTO "relationships" VALUES(213,11,2,8,'2015-06-09 21:44:07.080160','2015-06-09 21:44:07.080160');
INSERT INTO "relationships" VALUES(214,11,2,3,'2015-06-09 21:44:07.084118','2015-06-09 21:44:07.084118');
INSERT INTO "relationships" VALUES(215,11,2,10,'2015-06-09 21:44:07.088538','2015-06-09 21:44:07.088538');
INSERT INTO "relationships" VALUES(216,11,2,16,'2015-06-09 21:44:07.092688','2015-06-09 21:44:07.092688');
INSERT INTO "relationships" VALUES(217,11,3,6,'2015-06-09 21:44:07.097107','2015-06-09 21:44:07.097107');
INSERT INTO "relationships" VALUES(218,11,3,4,'2015-06-09 21:44:07.101023','2015-06-09 21:44:07.101023');
INSERT INTO "relationships" VALUES(219,11,3,9,'2015-06-09 21:44:07.104585','2015-06-09 21:44:07.104585');
INSERT INTO "relationships" VALUES(220,11,3,14,'2015-06-09 21:44:07.108131','2015-06-09 21:44:07.108131');
INSERT INTO "relationships" VALUES(221,11,4,5,'2015-06-09 21:44:07.112568','2015-06-09 21:44:07.112568');
INSERT INTO "relationships" VALUES(222,11,4,1,'2015-06-09 21:44:07.116183','2015-06-09 21:44:07.116183');
INSERT INTO "relationships" VALUES(223,11,4,2,'2015-06-09 21:44:07.119725','2015-06-09 21:44:07.119725');
INSERT INTO "relationships" VALUES(224,11,4,13,'2015-06-09 21:44:07.123782','2015-06-09 21:44:07.123782');
INSERT INTO "relationships" VALUES(225,14,1,14,'2015-06-09 21:44:07.128230','2015-06-09 21:44:07.128230');
INSERT INTO "relationships" VALUES(226,14,1,2,'2015-06-09 21:44:07.131745','2015-06-09 21:44:07.131745');
INSERT INTO "relationships" VALUES(227,14,1,10,'2015-06-09 21:44:07.135297','2015-06-09 21:44:07.135297');
INSERT INTO "relationships" VALUES(228,14,1,13,'2015-06-09 21:44:07.138945','2015-06-09 21:44:07.138945');
INSERT INTO "relationships" VALUES(229,14,2,1,'2015-06-09 21:44:07.142607','2015-06-09 21:44:07.142607');
INSERT INTO "relationships" VALUES(230,14,2,6,'2015-06-09 21:44:07.146408','2015-06-09 21:44:07.146408');
INSERT INTO "relationships" VALUES(231,14,2,9,'2015-06-09 21:44:07.149953','2015-06-09 21:44:07.149953');
INSERT INTO "relationships" VALUES(232,14,2,15,'2015-06-09 21:44:07.153434','2015-06-09 21:44:07.153434');
INSERT INTO "relationships" VALUES(233,14,3,5,'2015-06-09 21:44:07.168080','2015-06-09 21:44:07.168080');
INSERT INTO "relationships" VALUES(234,14,3,3,'2015-06-09 21:44:07.176936','2015-06-09 21:44:07.176936');
INSERT INTO "relationships" VALUES(235,14,3,16,'2015-06-09 21:44:07.181053','2015-06-09 21:44:07.181053');
INSERT INTO "relationships" VALUES(236,14,3,11,'2015-06-09 21:44:07.185011','2015-06-09 21:44:07.185011');
INSERT INTO "relationships" VALUES(237,14,4,8,'2015-06-09 21:44:07.188910','2015-06-09 21:44:07.188910');
INSERT INTO "relationships" VALUES(238,14,4,4,'2015-06-09 21:44:07.193208','2015-06-09 21:44:07.193208');
INSERT INTO "relationships" VALUES(239,14,4,7,'2015-06-09 21:44:07.196814','2015-06-09 21:44:07.196814');
INSERT INTO "relationships" VALUES(240,14,4,12,'2015-06-09 21:44:07.200207','2015-06-09 21:44:07.200207');
INSERT INTO "relationships" VALUES(241,10,1,10,'2015-06-09 21:44:07.204503','2015-06-09 21:44:07.204503');
INSERT INTO "relationships" VALUES(242,10,1,9,'2015-06-09 21:44:07.208064','2015-06-09 21:44:07.208064');
INSERT INTO "relationships" VALUES(243,10,1,6,'2015-06-09 21:44:07.211740','2015-06-09 21:44:07.211740');
INSERT INTO "relationships" VALUES(244,10,1,14,'2015-06-09 21:44:07.215400','2015-06-09 21:44:07.215400');
INSERT INTO "relationships" VALUES(245,10,2,5,'2015-06-09 21:44:07.219550','2015-06-09 21:44:07.219550');
INSERT INTO "relationships" VALUES(246,10,2,2,'2015-06-09 21:44:07.223032','2015-06-09 21:44:07.223032');
INSERT INTO "relationships" VALUES(247,10,2,11,'2015-06-09 21:44:07.226669','2015-06-09 21:44:07.226669');
INSERT INTO "relationships" VALUES(248,10,2,15,'2015-06-09 21:44:07.230161','2015-06-09 21:44:07.230161');
INSERT INTO "relationships" VALUES(249,10,3,1,'2015-06-09 21:44:07.234108','2015-06-09 21:44:07.234108');
INSERT INTO "relationships" VALUES(250,10,3,7,'2015-06-09 21:44:07.237838','2015-06-09 21:44:07.237838');
INSERT INTO "relationships" VALUES(251,10,3,13,'2015-06-09 21:44:07.241443','2015-06-09 21:44:07.241443');
INSERT INTO "relationships" VALUES(252,10,3,12,'2015-06-09 21:44:07.244982','2015-06-09 21:44:07.244982');
INSERT INTO "relationships" VALUES(253,10,4,8,'2015-06-09 21:44:07.248958','2015-06-09 21:44:07.248958');
INSERT INTO "relationships" VALUES(254,10,4,4,'2015-06-09 21:44:07.252476','2015-06-09 21:44:07.252476');
INSERT INTO "relationships" VALUES(255,10,4,3,'2015-06-09 21:44:07.255798','2015-06-09 21:44:07.255798');
INSERT INTO "relationships" VALUES(256,10,4,16,'2015-06-09 21:44:07.259120','2015-06-09 21:44:07.259120');
CREATE TABLE "scores" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "extraversion" integer, "openness" integer, "agreeableness" integer, "conscientiousness" integer, "user_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "answers" text);
INSERT INTO "scores" VALUES(1,24,24,24,24,3,'2015-06-09 21:48:23.481949','2015-06-09 21:48:23.481949','---
0: 3
1: 3
2: 3
3: 3
4: 3
5: 3
6: 3
7: 3
8: 3
9: 3
10: 3
11: 3
12: 3
13: 3
14: 3
15: 3
16: 3
17: 3
18: 3
19: 3
20: 3
21: 3
22: 3
23: 3
24: 3
25: 3
26: 3
27: 3
28: 3
29: 3
30: 3
31: 3
');
INSERT INTO "scores" VALUES(2,26,26,24,30,3,'2015-06-09 21:49:52.205910','2015-06-09 21:49:52.205910','---
0: 3
1: 3
2: 3
3: 3
4: 3
5: 3
6: 3
7: 3
8: 3
9: 3
10: 3
11: 3
12: 3
13: 3
14: 3
15: 3
16: 3
17: 3
18: 3
19: 3
20: 5
21: 1
22: 5
23: 1
24: 1
25: 3
26: 3
27: 5
28: 5
29: 5
30: 3
31: 5
');
INSERT INTO "scores" VALUES(3,22,28,26,26,1,'2015-06-09 22:37:00.980158','2015-06-09 22:37:00.980158','---
0: 5
1: 3
2: 5
3: 5
4: 3
5: 3
6: 3
7: 3
8: 3
9: 5
10: 3
11: 3
12: 3
13: 3
14: 3
15: 3
16: 3
17: 3
18: 3
19: 3
20: 3
21: 5
22: 3
23: 3
24: 3
25: 3
26: 3
27: 3
28: 3
29: 1
30: 3
31: 5
');
INSERT INTO "scores" VALUES(4,24,24,24,24,1,'2015-06-10 21:39:09.551522','2015-06-10 21:39:09.551522','---
0: 3
1: 3
2: 3
3: 3
4: 3
5: 3
6: 3
7: 3
8: 3
9: 3
10: 3
11: 3
12: 3
13: 3
14: 3
15: 3
16: 3
17: 3
18: 3
19: 3
20: 3
21: 3
22: 3
23: 3
24: 3
25: 3
26: 3
27: 3
28: 3
29: 3
30: 3
31: 3
');
INSERT INTO "scores" VALUES(5,24,24,24,24,1,'2015-06-15 19:59:30.382532','2015-06-15 19:59:30.382532','---
0: 3
1: 3
2: 3
3: 3
4: 3
5: 3
6: 3
7: 3
8: 3
9: 3
10: 3
11: 3
12: 3
13: 3
14: 3
15: 3
16: 3
17: 3
18: 3
19: 3
20: 3
21: 3
22: 3
23: 3
24: 3
25: 3
26: 3
27: 3
28: 3
29: 3
30: 3
31: 3
');
INSERT INTO "scores" VALUES(6,24,24,24,24,1,'2015-07-09 20:14:44.633270','2015-07-09 20:14:44.633270','---
0: 3
1: 3
2: 3
3: 3
4: 3
5: 3
6: 3
7: 3
8: 3
9: 3
10: 3
11: 3
12: 3
13: 3
14: 3
15: 3
16: 3
17: 3
18: 3
19: 3
20: 3
21: 3
22: 3
23: 3
24: 3
25: 3
26: 3
27: 3
28: 3
29: 3
30: 3
31: 3
');
INSERT INTO "scores" VALUES(7,28,32,18,28,1,'2015-07-09 21:23:37.154573','2015-07-09 21:23:37.154573','---
0: 4
1: 4
2: 3
3: 4
4: 3
5: 2
6: 2
7: 4
8: 3
9: 2
10: 4
11: 4
12: 4
13: 4
14: 4
15: 4
16: 2
17: 2
18: 4
19: 4
20: 4
21: 2
22: 4
23: 2
24: 2
25: 4
26: 4
27: 2
28: 2
29: 4
30: 1
31: 4
');
INSERT INTO "scores" VALUES(8,24,24,24,24,1,'2015-11-13 17:12:24.583433','2015-11-13 17:12:24.583433','---
0: 3
1: 3
2: 3
3: 3
4: 3
5: 3
6: 3
7: 3
8: 3
9: 3
10: 3
11: 3
12: 3
13: 3
14: 3
15: 3
16: 3
17: 3
18: 3
19: 3
20: 3
21: 3
22: 3
23: 3
24: 3
25: 3
26: 3
27: 3
28: 3
29: 3
30: 3
31: 3
');
INSERT INTO "scores" VALUES(9,21,25,24,22,1,'2015-11-13 17:12:33.194480','2015-11-13 17:12:33.194480','---
0: 3
1: 3
2: 3
3: 3
4: 3
5: 3
6: 3
7: 3
8: 3
9: 3
10: 3
11: 3
12: 3
13: 3
14: 3
15: 3
16: 3
17: 3
18: 3
19: 3
20: 3
21: 3
22: 1
23: 2
24: 5
25: 3
26: 2
27: 3
28: 3
29: 3
30: 3
31: 3
');
INSERT INTO "scores" VALUES(10,24,24,24,24,1,'2015-11-13 18:53:57.135211','2015-11-13 18:53:57.135211','---
0: 3
1: 3
2: 3
3: 3
4: 3
5: 3
6: 3
7: 3
8: 3
9: 3
10: 3
11: 3
12: 3
13: 3
14: 3
15: 3
16: 3
17: 3
18: 3
19: 3
20: 3
21: 3
22: 3
23: 3
24: 3
25: 3
26: 3
27: 3
28: 3
29: 3
30: 3
31: 3
');
INSERT INTO "scores" VALUES(11,22,19,25,25,1,'2015-11-13 18:54:29.439859','2015-11-13 18:54:29.439859','---
0: 5
1: 5
2: 3
3: 3
4: 4
5: 3
6: 4
7: 2
8: 5
9: 3
10: 3
11: 3
12: 3
13: 3
14: 3
15: 3
16: 2
17: 3
18: 5
19: 3
20: 2
21: 2
22: 2
23: 3
24: 5
25: 1
26: 3
27: 5
28: 5
29: 3
30: 1
31: 1
');
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar NOT NULL, "crypted_password" varchar, "salt" varchar, "personality_id" integer, "name" varchar, "created_at" datetime, "updated_at" datetime, "reset_password_token" varchar, "reset_password_token_expires_at" datetime, "reset_password_email_sent_at" datetime, "remember_me_token" varchar, "remember_me_token_expires_at" datetime, "avatar" varchar);
INSERT INTO "users" VALUES(1,'me@me.com','$2a$10$76LM/nS9ZU7thIYUBUXlo.tT4xDGU5pmCnQOBbTUHJSuqcKjlSs7K','qrmap8dESCoczpRhh3ka',5,'Minime','2015-06-09 21:44:03.307464','2015-11-13 18:54:29.450387',NULL,NULL,NULL,NULL,NULL,'einstein.jpeg');
INSERT INTO "users" VALUES(2,'sabina@gmail.com','$2a$10$cwcBoTkdjgw7WtglYv4Ed.jITHdyVsrcoeWt8LCOd5kBwKvdPMRea','7GU7vfoEBd2gGiuS3M3t',4,'Sabina','2015-06-09 21:44:03.693845','2015-06-09 21:44:03.850818',NULL,NULL,NULL,NULL,NULL,'githubphoto.jpg');
INSERT INTO "users" VALUES(3,'grace@hotmail.com','$2a$10$46Ksw7gBTKXLwWGZZsosIO2oDFW2lNv3YjOSyo6lL.GXo.kpf.dQW','8fEtbmzSDL4cepjnt78s',11,'Grace','2015-06-09 21:44:04.059151','2015-06-09 21:49:52.219420',NULL,NULL,NULL,NULL,NULL,'grace_hopper.jpg');
INSERT INTO "users" VALUES(4,'nikhat@yahoo.com','$2a$10$3YoJY98udniC053IVAXK8e0YIfkjNacy/Baa0IfXH5iLWRhveGpSm','sqJQQzUC8S6qn7zZWFz9',8,'Nikhat','2015-06-09 21:44:04.390283','2015-06-09 21:44:04.491845',NULL,NULL,NULL,NULL,NULL,'nikhat.jpg');
INSERT INTO "users" VALUES(5,'frank@google.com','$2a$10$eVWPSUkJ96AP0pRTdyykd.g0GX9YJBY4KPxxnNKZimJasyAIPepdq','CwFs2zYWh7UooeJkp2fY',11,'Frank','2015-06-09 21:44:04.688368','2015-06-09 21:44:04.898922',NULL,NULL,NULL,NULL,NULL,'frank.jpg');
CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
INSERT INTO "schema_migrations" VALUES('20150608230348');
INSERT INTO "schema_migrations" VALUES('20150521215301');
INSERT INTO "schema_migrations" VALUES('20150521230142');
INSERT INTO "schema_migrations" VALUES('20150521230516');
INSERT INTO "schema_migrations" VALUES('20150521232207');
INSERT INTO "schema_migrations" VALUES('20150521233438');
INSERT INTO "schema_migrations" VALUES('20150521235714');
INSERT INTO "schema_migrations" VALUES('20150525201033');
INSERT INTO "schema_migrations" VALUES('20150528025022');
INSERT INTO "schema_migrations" VALUES('20150528030646');
INSERT INTO "schema_migrations" VALUES('20150528031027');
INSERT INTO "schema_migrations" VALUES('20150528031536');
INSERT INTO "schema_migrations" VALUES('20150528190700');
INSERT INTO "schema_migrations" VALUES('20150528192749');
INSERT INTO "schema_migrations" VALUES('20150528200614');
INSERT INTO "schema_migrations" VALUES('20150528205302');
INSERT INTO "schema_migrations" VALUES('20150529181156');
INSERT INTO "schema_migrations" VALUES('20150604185332');
INSERT INTO "schema_migrations" VALUES('20150604194311');
INSERT INTO "schema_migrations" VALUES('20150605013440');
INSERT INTO "schema_migrations" VALUES('20150605030024');
INSERT INTO "schema_migrations" VALUES('20150608170526');
INSERT INTO "schema_migrations" VALUES('20150608170942');
INSERT INTO "schema_migrations" VALUES('20150608181535');
INSERT INTO "schema_migrations" VALUES('20150608210239');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('personalities',16);
INSERT INTO "sqlite_sequence" VALUES('users',5);
INSERT INTO "sqlite_sequence" VALUES('projects',11);
INSERT INTO "sqlite_sequence" VALUES('memberships',12);
INSERT INTO "sqlite_sequence" VALUES('compatibilities',4);
INSERT INTO "sqlite_sequence" VALUES('relationships',256);
INSERT INTO "sqlite_sequence" VALUES('scores',11);
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE INDEX "index_users_on_remember_me_token" ON "users" ("remember_me_token");
CREATE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
COMMIT;
