# Créez un programme qui affiche la racine carrée d’un entier positif.
case ARGV.length
when 1
  if ARGV[0].ord == 48 && ARGV[0].to_i.ord.zero?
    puts '0'
  elsif ARGV[0].ord == 49 && ARGV[0].to_i.ord == 1
    puts '1'
  elsif ARGV[0].to_i.ord.positive? && ARGV[0].to_s.length == ARGV[0].to_i.ord.to_s.length
    square_root = Math.sqrt(ARGV[0].to_i)
    if square_root == square_root.to_i
      puts square_root.to_i
    else
      puts square_root
    end
  else
    puts 'Entrez uniquement un chiffre ou un nombre positif comme argument'
  end
when 0
  puts 'Renseignez un argument'
else
  puts 'Vous devez entrer un seul argument'
end

