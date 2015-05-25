require 'pp'

lines = %{Q1 makes lists 1 2 3 4 5 relies on memory
Q2 sceptical 1 2 3 4 5 wants to believe
Q3 bored by time alone 1 2 3 4 5 needs time alone
Q4 accepts things as they are 1 2 3 4 5 unsatisfied with the ways things are
Q5 keeps a clean room 1 2 3 4 5 just puts stuff where ever
Q6 thinks "robotic" is an insult 1 2 3 4 5 strives to have a mechanical mind
Q7 energetic 1 2 3 4 5 mellow
Q8 prefer to take multiple choice test 1 2 3 4 5 prefer essay answers
Q9 chaotic 1 2 3 4 5 organized
Q10 easily hurt 1 2 3 4 5 thick-skinned
Q11 works best in groups 1 2 3 4 5 works best alone
Q12 focused on the present 1 2 3 4 5 focused on the future
Q13 plans far ahead 1 2 3 4 5 plans at the last minute
Q14 wants people's respect 1 2 3 4 5 wants their love
Q15 gets worn out by parties 1 2 3 4 5 gets fired up by parties
Q16 fits in 1 2 3 4 5 stands out
Q17 keeps options open 1 2 3 4 5 commits
Q18 wants to be good at fixing things 1 2 3 4 5 wants to be good at fixing people
Q19 talks more 1 2 3 4 5 listens more
Q20 when describing an event, will tell people what happened 1 2 3 4 5 when describing an event, will tell people what it meant
Q21 gets work done right away 1 2 3 4 5 procrastinates
Q22 follows the heart 1 2 3 4 5 follows the head
Q23 stays at home 1 2 3 4 5 goes out on the town
Q24 wants the big picture 1 2 3 4 5 wants the details
Q25 improvises 1 2 3 4 5 prepares
Q26 bases morality on justice 1 2 3 4 5 bases morality on compassion
Q27 finds it difficult to yell very loudly 1 2 3 4 5 yelling to others when they are far away comes naturally
Q28 theoretical 1 2 3 4 5 empirical
Q29 works hard 1 2 3 4 5 plays hard
Q30 uncomfortable with emotions 1 2 3 4 5 values emotions
Q31 likes to perform in front of other people 1 2 3 4 5 avoids public speaking
Q32 likes to know "who?", "what?", "when?" 1 2 3 4 5 likes to know "why"
}

results = lines.each_line.map do |line|
  a, b = line.chomp.split(" 1 2 3 4 5 ")
  q, a = a.split(" ", 2)

  q.gsub!("Q", "")

  [q.to_i, a, b]
end

puts "QUESTIONS = ["
results.each do |(q,a,b)|
  puts "  #{q} => [#{a.inspect}, #{b.inspect}]"
end
puts "]"