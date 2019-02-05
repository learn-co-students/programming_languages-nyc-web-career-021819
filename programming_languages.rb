def reformat_languages(languages)
  new_hash = {}                           #creating new variable to an empty hash
  languages.each do |key, value|          #iterating over the hash (languages)
    value.each do |language, traits|      #iterating 2nd time over value
      
      if new_hash.keys.include?(language)
        new_hash[language][:style] << key    #pushing key into new_hash if objects in language is                                          present in new_hash 
      elsif
        new_hash[language] = traits
        new_hash[language][:style] = [key]   # creating key/value pairs by pushing key** to [:style].                                       key** becomes the value, within new_hash
      end
    end
  end
  return new_hash
  
end
