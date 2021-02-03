class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question == 'i am going to work right now!'
      @answer = 'Great'
    elsif @question.end_with?('?')
      @answer = 'Silly question, go to work!'
    else
      @answer = "I don't care, go to work!"
    end
  end
end
