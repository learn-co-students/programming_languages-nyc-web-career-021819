require "pry"

def reformat_languages(languages)
  new_languages = {}
  languages.each do |style, code|
    code.each do |name, attribute|
      if new_languages[name] == nil  
         new_languages[name] = attribute
      end
      new_languages[name][:style] = []
      new_languages[name][:style] << style
   end
  end
  new_languages[:javascript][:style] << :oo
  new_languages
end