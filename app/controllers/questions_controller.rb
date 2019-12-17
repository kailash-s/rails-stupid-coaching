class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @asnwer = 'I cant hear you!'
    elsif @question =~ /i am going to work/i
      @answer = 'Great!'
    elsif @question.ends_with?('?')
      @answer = 'Silly question, go to work!'
    else
      @answer = 'I dont care! Go to work!'
    end
  end
end
