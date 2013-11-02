class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @user = User.new
  end

  def new
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
    # if Ques
    @answer = Answer.new
    @questioning_user = User.find(@question.user_id)
  end

  def create
    @question = Question.new(question_text: params[:question][:question_text], user_id: current_user.id)
    if @question
      @question.save
      p @question
      redirect_to question_path(@question)
    else
      redirect_to 'questions#new'
    end
  end
end
