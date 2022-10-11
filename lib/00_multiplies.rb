def is_multiple_of_3_or_5?(numb)  # identifit un multiple de 3 ou 5
  if numb % 3 == 0 || numb % 5 == 0 # % = divise
    return true
  else
    return false
  end
end

def sum_of_multiple_of_3_or_5?(final_number) # Méthode principal
  final_sum = 0 # cette variable est la somme finale qui sera retournée. Ici on l'initialise à zéro
  current_number = 0

  if !final_number.is_a?(Integer) || final_number < 0
    return 'Yo ! Je ne prends que les entiers naturels. TG'
  else
    for current_number in 0..final_number - 1 do
      if is_multiple_of_3_or_5?(current_number)
        # si la réponse est "true", alors je rajoute la valeur de "current_number" à la variable "final_sum".
        final_sum += current_number
      end
    end
  end

  # on retourne la variable qui contient la somme du tout
  return final_sum
end

puts sum_of_multiple_of_3_or_5?(11)
