class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @response = custom_response(@question)
  end

  private
  def custom_response(question)
    if question == 'I am going to work'
      'Great'
    elsif question.include? '?'
      'Silly question, get dressed and go to work!'
    else
      'I don’t care, get dressed and go to work!'
    end
  end
end
