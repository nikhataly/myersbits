class MBTITest



  QUESTIONS = [
    ["This is a placeholder for the 0th Index"],
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

  # 'answers' is the form full of question-numbers to answer values, eg: {"q1" => "5", "q2" => "1", etc.}
  def initialize(answers)
    # convert {"q1" => "1", ...} to {1 => 1, ...}
    @a = answers
  end

  def calculate_ie
    30 - @a[3] - @a[7] - @a[11] + @a[15] - @a[19] + @a[23] + @a[27] - @a[31]
  end

  def calculate_sn
    12 + @a[4] + @a[8] + @a[12] + @a[16] + @a[20] - @a[24] - @a[28] + @a[32]
  end

  def calculate_ft
    30 - @a[2] + @a[6] + @a[10] - @a[14] + @a[18] - @a[22] - @a[26] - @a[30]
  end

  def calculate_jp
    18 + @a[1] + @a[5] - @a[9] + @a[13] - @a[17] + @a[21] - @a[25] + @a[29]
  end

  def score
    [calculate_ie, calculate_sn, calculate_ft, calculate_jp]
  end

  def mbti
    ie, sn, ft, jp = score

    s  = ie < 25 ? "I" : "E"
    s += sn < 25 ? "S" : "N"
    s += ft < 25 ? "F" : "T"
    s += jp < 25 ? "J" : "P"

    s
  end

end



# in da view:
# <% MBTITest::QUESTIONS.each do |q, (a, b)| %>
#   <%= a %>
#   <radio button from 1 to 5>
#   <%= b %>
# <% end %>


# in da Score controlla:
# def create
#   MBTITest.new(params[:answers])
# end

