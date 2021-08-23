puts "Adivinhe o número!"
def main
  puts "Número minimo"
  min = gets.chomp.to_i
  puts "Número maximo"
  max = gets.chomp.to_i
  n1 = rand(min..max)
  n2 = 0
  guess_count = 0
  limit = 3
  out_of_guess = false
  while n2 != n1 and out_of_guess == false do
    if guess_count < limit
      puts "Não é esse, tente novamente"
      n2 = gets.chomp.to_i
      guess_count += 1
      guesses = limit - guess_count
      puts "Você tentou #{guess_count} vezes, restam #{guesses} tentativas"
    else
      out_of_guess = true
    end
  end
  if out_of_guess == false
    puts "Você venceu!"
  else
    puts "Você perdeu tente novamente"
  end
end
main