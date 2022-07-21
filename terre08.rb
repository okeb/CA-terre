# Créez un programme qui affiche le résultat d’une puissance.
if ARGV.length == 2
  if ARGV[1].to_i != 0
    if (ARGV[0].to_i == ARGV[0].to_s.chr.to_i && ARGV[0].to_s.length == 1) || (ARGV[0].to_s.length >= 2 && ARGV[0].chr.to_i >= 1 && ARGV[0].to_i > 10)
      puts ARGV[0].to_i**ARGV[1].to_i
    else
      puts "votre premier argument semble ne pas être un chiffre"
    end
  else
    puts "l'exposant ne doit pas être égal à 0 encore moins un lettre"
  end
else
  puts "pas assez ou trop d'arguments"
end