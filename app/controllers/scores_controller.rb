class ScoresController < ApplicationController
  # def index
  #   @scores = Score.all
  # end

  def new
    @score = Score.new
  end

  def create
    answers = (params[:answers].values.unshift(0)).map{|ans| ans.to_i}
    ie = Score.calculate_ie(answers)
    sn = Score.calculate_sn(answers)
    ft = Score.calculate_ft(answers)
    jp = Score.calculate_jp(answers)
    @score = Score.new(extraversion: ie, openness: sn, agreeableness: ft, conscientiousness: jp)
    @score.user = current_user
    current_user.personality = Personality.find_by_mbti(@score.mbti)
    current_user.save
    @score.save
  end

  def destroy
  end

  def show
  end

  def edit
  end
end
