# Créez un programme qui affiche l’alphabet à partir de la lettre donnée en argument en lettres minuscules
# suivi d’un retour à la ligne.
printing = false
(97..122).each do |i|
  printing = true if $*[0].ord == i
  print i.chr if printing
  puts '' if i == 122
end
