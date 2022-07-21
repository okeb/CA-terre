# Créez un programme qui transforme une heure affichée en format 12h en une heure affichée au format 24h.
data = ARGV[0]
if ARGV.length == 1 && data.match(/^((0?[1-9]{1})|1{1}[0-2]{1}):{1}([0-5]{1}[0-9]{1})[A,P]{1}M$/)
  heures = data.split(':')[0].to_i
  minutes = data.split(':')[1][0,2]
  meridiem = data.split(':')[1][2,4].downcase
  if meridiem == 'am'

    if heures == 12
      puts "00:#{minutes}"
    else
      puts "#{heures}:#{minutes}"
    end
  else
    if heures == 12
      puts "12:#{minutes}"
    else
      puts "#{heures + 12}:#{minutes}"
    end
  end
  # if heures.zero?
  #   puts "12:#{minutes}AM"
  # elsif heures.positive? && heures < 12
  #   puts "#{heures}:#{minutes}AM"
  # elsif heures == 12
  #   puts "12:#{minutes}PM"
  # elsif heures >= 12 && heures < 24
  #   puts "#{heures - 12}:#{minutes}PM"
  # else
  #   puts "12:#{minutes}AM"
  # end
else
  puts 'veuillez entrer une heure de la forme hh:mmAM ou hh:mmPM'
end

