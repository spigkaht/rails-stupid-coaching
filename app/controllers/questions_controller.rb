class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = ''
    question = params[:question]
    @answer = if question.last == '?'
                'Silly question, get dressed and go to work!'
              elsif question == 'I am going to work'
                'Great!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
