def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, lang_hash|
    lang_hash.each do |language, attribute_hash|
      attribute_hash.each do |attribute, val|
        if new_hash[language] === nil
          new_hash[language] = {}
        end

        new_hash[language][:style] ||= []
        new_hash[language][:style].push(style)
        if new_hash[language][attribute] === nil
          new_hash[language][attribute] = val
        end
      end
    end
  end

  new_hash
end
