class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = stupid_coach(@question)
  end

  def stupid_coach(input)
    if input === 'I am going to work'
      'Great!'
    elsif input.include?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end

# The answer.html.erb will display the question you ask your
# coach as well as his answer. The controller will need to read
# the question from params and compute an instance variable @answer
# for the view to display. Here are two requests that you should be
# able to handle:

# localhost:3000/answer?question=hello
# localhost:3000/answer?question=what time is it?

# 1. If the message is I am going to work, the coach will answer Great!
# 2. If the message has a question mark ? at the end, the coach will
# answer Silly question, get dressed and go to work!.
# 3. Otherwise the coach will answer I don't care, get dressed and go
# to work!
