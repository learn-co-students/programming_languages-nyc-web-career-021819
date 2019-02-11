require "pry"

def reformat_languages(languages)
  hash={}
  languages.each do |key, value|
    value.each do |name, data|
      if hash[name]
        hash[name][:style]<< key
      else
        hash[name] = {type: data[:type], style: [key]}
      end
    end
  end
  hash
end
