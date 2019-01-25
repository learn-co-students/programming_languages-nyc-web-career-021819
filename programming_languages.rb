require "pry"
def reformat_languages(languages)
  # your code here
  new_hash = {}

languages.each do |styles, languages|
  languages.each do|language, type|
    if new_hash.keys.include?(language)
      new_hash[language][:style] << styles
    else
      new_hash[language] = type
      new_hash[language][:style] = [styles]
    end
  end
end
  new_hash
end
