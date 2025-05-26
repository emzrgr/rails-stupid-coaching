class QuestionsController < ApplicationController
  def ask

  end

  def answer
    # variable d'instance @answer à affiche dans la View (answer.html.erb)
    @question = params[:question]
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.ends_with?("?")
      @answer = "Silly question, get dressed and go to work"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
