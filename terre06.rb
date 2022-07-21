# Créez un programme qui affiche l’inverse de la chaîne de caractères donnée en argument.
word = ARGV[0].tr("\r\n", '!')
word_reverse = ''

counter = word.length
(1..counter).each do |i|
  word_reverse += word[counter - i]
end

puts word_reverse
