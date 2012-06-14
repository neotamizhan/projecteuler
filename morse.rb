#http://www.therubygame.com/challenges/6/submissions
def morse_to_eng (morse)
  code = {".-"=>"A", "-..."=>"B", "-.-."=>"C", "-.."=>"D", "."=>"E", "..-."=>"F", "--."=>"G", "...."=>"H", ".."=>"I", ".---"=>"J", "-.-"=>"K", ".-.."=>"L", "--"=>"M", "-."=>"N", "---"=>"O", ".--."=>"P", "--.-"=>"Q", ".-."=>"R","..."=>"S", "-"=>"T", "..-"=>"U", "...-"=>"V", ".--"=>"W", "-..-"=>"X", "-.--"=>"Y", "--.."=>"Z"}
  morse.gsub(/[ ]{3}/,' @@ ').split(" ").map{|x| (x=="@@")?x:code[x]}.join.gsub("@@",' ')
end

morse = ".... . .-.. .--.   -- .   --- ..- -   --- ..-.   - .... .. ...   .-- . .-.. .-.."

puts morse_to_eng(morse)


def capitalize(phrase)
phrase.split(' ').map{|x| x.capitalize}.join(' ')
end


puts capitalize 'The small brown & ginger fox JUMPED OVER the gate'