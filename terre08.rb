# Créez un programme qui affiche le résultat d’une puissance.
if ARGV.length == 2
  if (ARGV[1].ord == 48 && ARGV[1].to_i.ord.zero?) || (ARGV[1].ord == 49 && ARGV[1].to_i.ord == 1) || (ARGV[1].to_i.ord.positive? && ARGV[1].to_s.length == ARGV[1].to_i.ord.to_s.length)
    if (ARGV[0].ord == 48 && ARGV[0].to_i.ord.zero?) || (ARGV[0].ord == 49 && ARGV[0].to_i.ord == 1) || (ARGV[0].to_i.ord != 0 && ARGV[0].to_s.length == ARGV[0].to_i.ord.to_s.length)
      puts ARGV[0].to_i**ARGV[1].to_i
    else
      puts "votre premier argument semble ne pas être un chiffre"
    end
  else
    puts "l'exposant (le second argument) doit être numérique et supérieur ou égal à zéro"
  end
else
  puts "Veuillez passer deux arguments au programme"
end
