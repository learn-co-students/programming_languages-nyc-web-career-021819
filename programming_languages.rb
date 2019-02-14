def reformat_languages(languages)

	new_hash = {}
	languages.each do |style, language_data|
  		language_data.each do |language_name, type_hash|
  			new_hash[language_name] ||= {type: type_hash[:type], style: []}
  			new_hash[language_name][:style] << style
  		end
  	end
  	new_hash
  	
end