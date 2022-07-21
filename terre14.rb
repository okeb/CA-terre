# Créez un programme qui détermine si une liste d’entiers est triée ou pas.
counter = 0
if ARGV.length > 1
  is_sorted = true
  while counter < ARGV.length - 1
    if (ARGV[counter].match /^\d*$/) && (ARGV[counter + 1].match /^\d*$/)
      is_sorted = false if ARGV[counter].to_i >= ARGV[counter + 1].to_i
    else
      puts 'erreur'
      exit
    end
    counter += 1
  end
  if !is_sorted
    puts 'Pas triée !'
  else
    puts 'Triée !'
  end
else
  puts 'erreur'
end
