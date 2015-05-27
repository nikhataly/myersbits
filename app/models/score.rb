class Score < ActiveRecord::Base

  QUESTIONS = [
    ["makes lists", "relies on memory"],
    ["sceptical", "wants to believe"],
    ["bored by time alone", "needs time alone"],
    ["accepts things as they are", "unsatisfied with the ways things are"],
    ["keeps a clean room", "just puts stuff where ever"],
    ["thinks \"robotic\" is an insult", "strives to have a mechanical mind"],
    ["energetic", "mellow"],
    ["prefer to take multiple choice test", "prefer essay answers"],
    ["chaotic", "organized"],
    ["easily hurt", "thick-skinned"],
    ["works best in groups", "works best alone"],
    ["focused on the present", "focused on the future"],
    ["plans far ahead", "plans at the last minute"],
    ["wants people's respect", "wants their love"],
    ["gets worn out by parties", "gets fired up by parties"],
    ["fits in", "stands out"],
    ["keeps options open", "commits"],
    ["wants to be good at fixing things", "wants to be good at fixing people"],
    ["talks more", "listens more"],
    ["when describing an event, will tell people what happened", "when describing an event, will tell people what it meant"],
    ["gets work done right away", "procrastinates"],
    ["follows the heart", "follows the head"],
    ["stays at home", "goes out on the town"],
    ["wants the big picture", "wants the details"],
    ["improvises", "prepares"],
    ["bases morality on justice", "bases morality on compassion"],
    ["finds it difficult to yell very loudly", "yelling to others when they are far away comes naturally"],
    ["theoretical", "empirical"],
    ["works hard", "plays hard"],
    ["uncomfortable with emotions", "values emotions"],
    ["likes to perform in front of other people", "avoids public speaking"],
    ["likes to know \"who?\", \"what?\", \"when?\"", "likes to know \"why\""],
  ]

  belongs_to :user

  def self.questions
    QUESTIONS
  end

  def self.calculate_ie(a)
    30 - a[3] - a[7] - a[11] + a[15] - a[19] + a[23] + a[27] - a[31]
  end

  def self.calculate_sn(a)
    12 + a[4] + a[8] + a[12] + a[16] + a[20] - a[24] - a[28] + a[32]
  end

  def self.calculate_ft(a)
    30 - a[2] + a[6] + a[10] - a[14] + a[18] - a[22] - a[26] - a[30]
  end

  def self.calculate_jp(a)
    18 + a[1] +a[5] - a[9] + a[13] - a[17] + a[21] - a[25] + a[29]
  end

  def mbti
   
    s  = extraversion < 25 ? "I" : "E"
    s += openness < 25 ? "S" : "N"
    s += agreeableness < 25 ? "F" : "T"
    s += conscientiousness < 25 ? "J" : "P"

    s
  end

end