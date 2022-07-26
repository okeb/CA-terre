# Créez un programme qui transforme une heure affichée en format 24h en une heure affichée en format 12h.
data = ARGV[0]
if ARGV.length == 1 && data.match(/^((0?[0-9]{1})|1{1}[0-9]{1}|2{1}[0-4]{1}):{1}[0-5]{1}[0-9]{1}$/)
  heures = data.split(':')[0].to_i
  minutes = data.split(':')[1]
  if heures.zero?
    puts "12:#{minutes}AM"
  elsif heures.positive? && heures < 12
    puts "#{heures}:#{minutes}AM"
  elsif heures == 12
    puts "12:#{minutes}PM"
  elsif heures >= 12 && heures < 24
    puts "#{heures - 12}:#{minutes}PM"
  else
    puts "12:#{minutes}AM"
  end
else
  puts "veuillez entrer une heure de la forme HH:MM"
end
