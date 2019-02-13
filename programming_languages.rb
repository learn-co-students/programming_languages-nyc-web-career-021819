def reformat_languages(languages)
  # your code here

  solution = {}

  languages.each do |style, language_hash|
    language_hash.each do |language, type_hash|
      if solution[language] 
        solution[language][:style].push(style)
      else
        solution[language] = type_hash
        solution[language].store(:style, [style])
      end
    end
  end
  return solution
end
