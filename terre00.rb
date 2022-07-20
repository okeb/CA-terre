# Affiche l'alphabet en lettres minuscules suivi d'un retour à la ligne.
(97..122).each do |i|
  print i.chr
  puts '' if i == 122
end
