# def reformat_languages(languages)
#   new_hash = {}
  
#     languages.each do |style, style_lang|
#       style_lang.each do |language, value|
#             value.each do |key, value|
#             new_hash[language][key] = value
#             new_hash[language][:style] = []
#     end
#   end
# end

# languages.each do |style, style_lang|
#     style_lang.each do |language, value|
#       value.each do |key, value|
#         new_hash[language][:style] << style
#       end
#     end
#   end

#   return new_hash

# end

def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.each do |style, style_value|
    style_value.each do |language, value|

#at this level we add the language to the hash to use later
       new_hash[language] = {}
       
#then we iterate through the values inside of the languages

      value.each do |key, v|
        
#and at this level we add the hash value which is the :type has inside the

        new_hash[language][key] = v
        new_hash[language][:style] = []
      end
    end
  end

#now that we have all of the parts of the languages hash iterated and added onto the new hash, we just have to add the style to the hash Array

  languages.each do |style, style_value|
    style_value.each do |language, value|
      value.each do |key, v|
        new_hash[language][:style] << style
      end
    end
  end

  return new_hash
end
