class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @reply = "I don't care, get dressed and go to work!"

    if @question.downcase == 'i am going to work!'
      @reply = 'Great!'
    elsif @question.include?('?')
      @reply = 'Silly question, get dressed and go to work!'
    end
  end
end
