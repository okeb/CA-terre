# Créez un programme qui affiche le résultat et le reste d’une division entre deux nombres.
number1 = $*[0].to_i
number2 = $*[1].to_i

if number2.zero? || number2 > number1
  puts 'erreur'
else
  puts "résultat: #{number1 / number2}"
  puts "reste: #{number1 % number2}"
end
