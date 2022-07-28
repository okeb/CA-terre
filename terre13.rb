# Créez un programme qui prend en paramètre trois entiers et affiche la valeur du milieu.
if ARGV.length == 3
  if (ARGV[0].match /^\d*$/) && (ARGV[1].match /^\d*$/) && (ARGV[2].match /^\d*$/)
    if ARGV[0] > ARGV[1] && ARGV[0] > ARGV[2]
      nb_1 = ARGV[0].to_i
      if ARGV[1] > ARGV[2]
        nb_2 = ARGV[1].to_i
        nb_3 = ARGV[2].to_i
      else
        nb_2 = ARGV[2].to_i
        nb_3 = ARGV[1].to_i
      end
    elsif ARGV[0] > ARGV[1]
      nb_1 = ARGV[2].to_i
      nb_2 = ARGV[0].to_i
      nb_3 = ARGV[1].to_i
    elsif ARGV[0] > ARGV[2]
      nb_1 = ARGV[1].to_i
      nb_2 = ARGV[0].to_i
      nb_3 = ARGV[2].to_i
    elsif ARGV[1] > ARGV[2]
      nb_1 = ARGV[1].to_i
      nb_2 = ARGV[2].to_i
      nb_3 = ARGV[0].to_i
    else
      nb_1 = ARGV[2].to_i
      nb_2 = ARGV[1].to_i
      nb_3 = ARGV[0].to_i
    end

    if nb_1 > nb_2 && nb_2 > nb_3
      puts "#{nb_2}"
    else
      puts "erreur."
    end
  else
    puts "verifiez vos arguments. le programme n'accepte que des entiers"
  end
else
  puts 'Ce programme requière trois arguments pour fonctionner'
end
