VALID_WORDS = []
File.open(Rails.root.join('words.txt')).each do |line|
  VALID_WORDS << line.gsub(/\r\n/, '')
end
