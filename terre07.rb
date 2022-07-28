# Créez un programme qui affiche le nombre de caractères d’une chaîne de caractères passée en argument.
word = ARGV.length

if ARGV.length == 1 && ARGV[0].to_i.zero?
  puts ARGV[0].length
else
  puts 'erreur.'
end
