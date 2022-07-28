# frozen_string_literal: true
# Créez un programme qui affiche si un nombre est premier ou pas.
case ARGV.length
when 1
  number = ARGV[0]
  case number
  when /^[0,1]{1}$/
    puts "Non, #{number} n’est pas un nombre premier."
  when /^\d+$/
    somme = 0
    (0..number.to_s.length).each do |x|
      somme += number[x].to_i
    end
    if !number.match(/^2{1}$/) && (number.to_i % 2).zero?
      puts "Non, #{number} n’est pas un nombre premier."
    elsif !number.match(/^3{1}$/) && number.to_i > 3 && (somme % 3).zero?
      puts "Non, #{number} n’est pas un nombre premier."
    elsif !number.match(/^5{1}$/) && (number[-1].to_i == 5 || number[-1].to_i.zero?) && (number.to_i > 5)
      puts "Non, #{number} n’est pas un nombre premier."
    elsif !number.match(/^7{1}$/) && (number.to_i % 7).zero? && (number.to_i > 7)
      puts "Non, #{number} n’est pas un nombre premier."
    else
      puts "Oui, #{number} est un nombre premier."
    end
  else
    puts 'Entrez uniquement un chiffre ou un nombre positif comme argument'
  end
when 0
  puts 'Renseignez un argument'
else
  puts 'Envoyez un seul argument numérique au programme'
end
