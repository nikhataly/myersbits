class Score < ActiveRecord::Base

  QUESTIONS = [
    ["Makes lists", "Relies on memory"],
    ["Sceptical", "Wants to believe"],
    ["Bored by time alone", "Needs time alone"],
    ["Accepts things as they are", "Unsatisfied with the ways things are"],
    ["Keeps a clean room", "Just puts stuff where ever"],
    ["Thinks \"robotic\" is an insult", "Strives to have a mechanical mind"],
    ["Energetic", "Mellow"],
    ["Prefer to take multiple choice test", "Prefer essay answers"],
    ["Chaotic", "Organized"],
    ["Easily hurt", "Thick-skinned"],
    ["Works best in groups", "Works best alone"],
    ["Focused on the present", "Focused on the future"],
    ["Plans far ahead", "Plans at the last minute"],
    ["Wants people's respect", "Wants their love"],
    ["Gets worn out by parties", "Gets fired up by parties"],
    ["Fits in", "Stands out"],
    ["Keeps options open", "Commits"],
    ["Wants to be good at fixing things", "Wants to be good at fixing people"],
    ["Talks more", "Listens more"],
    ["When describing an event, will tell people what happened", "when describing an event, will tell people what it meant"],
    ["Gets work done right away", "Procrastinates"],
    ["Follows the heart", "Follows the head"],
    ["Stays at home", "Goes out on the town"],
    ["Wants the big picture", "Wants the details"],
    ["Improvises", "Prepares"],
    ["Bases morality on justice", "Bases morality on compassion"],
    ["Finds it difficult to yell very loudly", "Yelling to others when they are far away comes naturally"],
    ["Theoretical", "Empirical"],
    ["Works hard", "Plays hard"],
    ["Uncomfortable with emotions", "Values emotions"],
    ["Likes to perform in front of other people", "Avoids public speaking"],
    ["Likes to know \"who?\", \"what?\", \"when?\"", "Likes to know \"why\""],
  ]

  belongs_to :user
  serialize :answers

  def self.questions
    QUESTIONS
  end

  def calculate_ie
    30 - a[2] - a[6] - a[10] + a[14] - a[18] + a[22] + a[26] - a[30]
  end

  def calculate_sn
    12 + a[3] + a[7] + a[11] + a[15] + a[19] - a[23] - a[27] + a[31]
  end

  def calculate_ft
    30 - a[1] + a[5] + a[9] - a[13] + a[17] - a[21] - a[25] - a[29]
  end

  def calculate_jp
    18 + a[0] +a[4] - a[8] + a[12] - a[16] + a[20] - a[24] + a[28]
  end

  def calculate_all
    self.extraversion = calculate_ie
    self.openness = calculate_sn
    self.agreeableness = calculate_ft
    self.conscientiousness = calculate_jp
  end

  def a
    answers
  end

  def add_answers(param)
    answers = param.map{|k,v| [k.to_i, v.to_i] }.to_h
    self.answers ||= {}
    self.answers = self.answers.merge(answers)
  end

  def mbti
    s  = extraversion < 25 ? "I" : "E"
    s += openness < 25 ? "S" : "N"
    s += agreeableness < 25 ? "F" : "T"
    s += conscientiousness < 25 ? "J" : "P"

    s
  end

end