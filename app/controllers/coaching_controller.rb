def coach_answer(your_message)
  # TODO: return coach answer to your_message
  ret = ''
  down_mes = your_message.downcase
  if down_mes == "I am going to work right now!".downcase!
    ret = ""
  elsif down_mes[-1] == '?'
    ret = "Silly question, get dressed and go to work!"
  else
    ret = "I don't care, get dressed and go to work!"
  end
  return ret
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
  ret = coach_answer(your_message)
  if ret == ''
    ret = ''
  elsif your_message == your_message.upcase
    ret = "I can feel your motivation! " + ret
  end
  return ret
end

class CoachingController < ApplicationController
  def answer
    @question = params[:query]
    @answer = coach_answer_enhanced(@question)
  end

  def ask
  end
end
