class ScoresController < ApplicationController
  # def index
  #   @scores = Score.all
  # end

  def new
    @score = Score.new
  end

  def create
    binding.pry
    answers = (params[:answers].values.unshift(0)).map{|ans| ans.to_i}
    binding.pry
    ie = Score.calculate_ie(answers)
    sn = Score.calculate_sn(answers)
    ft = Score.calculate_ft(answers)
    jp = Score.calculate_jp(answers)
    binding.pry
    @score = Score.new(extraversion: ie, openness: sn, agreeableness: ft, conscientiousness: jp)
    @score.user = current_user
    binding.pry
    current_user.personality = Personality.find_by_mbti(@score.mbti)
    current_user.save
    binding.pry
    @score.save
    binding.pry
  end

  def destroy
  end

  def show
  end

  def edit
  end
end
