# frozen_string_literal: true

def sum_of_3_or_5_multiples(number)
  if number.is_a?(Integer) == true && number >= 0
    counter = 0
    final_sum = []
    while counter < number
      final_sum << counter if is_multiple_of_3_or_5?(counter)
      counter += 1
    end
    final_sum.inject(0, :+)
  else
    "Erreur d'entrée, merci de donner un nombre entier naturel"
  end
end

def is_multiple_of_3_or_5?(current_number)
  if (current_number % 3).zero? || (current_number % 5).zero?
    true
  else
    false
  end
end
