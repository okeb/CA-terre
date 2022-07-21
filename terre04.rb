# Créez un programme qui permet de déterminer si l’argument donné est un entier pair ou impair.
number = $*[0].to_i
if number.zero?
  puts 'Tu ne me la mettras pas à l’envers.'
else
  rest = number % 2
  if rest.zero?
    puts 'pair'
  else
    puts 'impair'
  end
end
