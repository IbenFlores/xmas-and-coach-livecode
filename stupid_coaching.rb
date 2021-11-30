def coach_answer(your_message)
  if your_message.downcase == "i am going to work right now!" || your_message == ""
    ""
  elsif your_message.include?("?")
    "Silly question! get dressed and go to work!"
  else
    "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message) # I AM GOING TO WORK RIGHT NOW!
  answer = coach_answer(your_message)
  if answer != ""
    if your_message == your_message.upcase    # chequeamos que el mensaje
      "I can feel your motivation! #{answer}" # original sea igual a su version en mayusculas
    else
      answer
    end
  else
    answer
  end
end

respuesta = nil
while respuesta != ""
  mensaje = gets.chomp.to_s
  respuesta = coach_answer_enhanced(mensaje)
  puts respuesta
end

# Hello coach => I don't care, get dressed and go to work!
# Can i eat pizza today? please coach => Silly question! get dressed and go to work!
# I am going to work right now! => ""

#HELLO COACH => I can feel your motivation! I don't care, get dressed and go to work!
