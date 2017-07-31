class CoachingsController < ApplicationController
  def answer
    @answer = params[:query]
    @coach_answer = coach_answer_enhanced(@answer)
  end

  def ask
    @ask = params[:query]
  end

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message == "I am going to work right now!"
      return ""
    elsif your_message.end_with?('?')
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    # Get the regular answer
    regular_answer = coach_answer(your_message)

    # Check if the message is in CAPS
    if your_message == "I AM GOING TO WORK RIGHT NOW!"
      return ""
    elsif your_message == your_message.upcase
      return "I can feel your motivation! #{regular_answer}"
    else
      return regular_answer
    end
  end
end
