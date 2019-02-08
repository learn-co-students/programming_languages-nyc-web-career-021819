require "pry"

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, code|
    code.each do |name, attribute|
      if new_hash[name] == nil  
         new_hash[name] = attribute
      end
      new_hash[name][:style] = []
      new_hash[name][:style] << style
   end
  end
  new_hash[:javascript][:style] << :oo
  new_hash
end