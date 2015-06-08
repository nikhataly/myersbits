class ScoresController < ApplicationController
  # def index
  #   @scores = Score.all
  # end

  def new
    @score = Score.new
  end

  def page
    page = params[:page_num]
    page_size = 10
  end

  def submit_page
    session[:answers] ||= {}
    session[:answers] = session[:answers].merge(params[:answers])
  end

  def create
    # answers = (params[:answers].values.unshift(0)).map{|ans| ans.to_i}
    # answers = params[:answers]
    @score = current_user.scores.new
    @score.add_answers params[:answers]
    @score.calculate_all
    @score.save

    # ie(answers)
    # sn = Score.calculate_sn(answers)
    # ft = Score.calculate_ft(answers)
    # jp = Score.calculate_jp(answers)
    # @score = Score.new(extraversion: ie, openness: sn, agreeableness: ft, conscientiousness: jp)

    current_user.personality = Personality[@score.mbti]
    current_user.save
  end

  def destroy
  end

  def show
  end

  def edit
  end
end
