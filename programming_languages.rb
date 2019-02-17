def reformat_languages(languages)
  # your code here
  new_lang = {}
  languages.each do |styple, language|
    
    language.each do |name, attri|
      
      attri.each do |k, v|
 #now I have all the key value pairs, add them to the new hash       
      
      if new_lang.key?(name) == false
      new_lang[name] = {k => v, :style => [styple]}
      #create languages first
    else
      new_lang[name][:style] << styple
      #only add new style key
    end
  end
    end
  end
  new_lang
end
