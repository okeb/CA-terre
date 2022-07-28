# Créez un programme qui affiche l’inverse de la chaîne de caractères donnée en argument.
word = ARGV[0]
if ARGV.length != 1
  puts 'erreur.'
  exit
end
word_reverse = ''

counter = word.length
(1..counter).each do |i|
  word_reverse += word[counter - i]
end

puts word_reverse
