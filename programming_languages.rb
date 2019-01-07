

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

def reformat_languages(languages)
  new_hash = {}
  languages.each do |main_category, languages|
  	new_hash[languages] = main_category
  	languages.each do |language, type|
  		if new_hash.has_key?(language)
  			  		new_hash[language][:style] << main_category
  			  	else
  				new_hash[language] = type 
  				new_hash[language][:style] = [main_category]
  			end
 
  		end
  	end
  new_hash
end



# other_hash = {{:ruby=>{:type=>"interpreted", :style=>[:oo]}, :javascript=>{:type=>"interpreted", :style=>[:oo]}, :python=>{:type=>"interpreted", :style=>[:oo]}, :java=>{:type=>"compiled", :style=>[:oo]}}=>:oo, :ruby=>{:type=>"interpreted", :style=>[:oo]}, :javascript=>{:type=>"interpreted", :style=>[:functional]}, :python=>{:type=>"interpreted", :style=>[:oo]}, :java=>{:type=>"compiled", :style=>[:oo]}, {:clojure=>{:type=>"compiled", :style=>[:functional]}, :erlang=>{:type=>"compiled", :style=>[:functional]}, :scala=>{:type=>"compiled", :style=>[:functional]}, :javascript=>{:type=>"interpreted", :style=>[:functional]}}=>:functional, :clojure=>{:type=>"compiled", :style=>[:functional]}, :erlang=>{:type=>"compiled", :style=>[:functional]}, :scala=>{:type=>"compiled", :style=>[:functional]}}

# final_hash = {
#   :ruby => {
#     :type => "interpreted",
#     :style => [:oo]
#   },
#   :javascript => {
#     :type => "interpreted",
#     :style => [:oo, :functional]
#   },
#   :python => {
#     :type => "interpreted",
#     :style => [:oo]
#   },
#   :java => {
#     :type => "compiled",
#     :style => [:oo]
#   },
#   :clojure => {
#     :type => "compiled",
#     :style => [:functional]
#   },
#   :erlang => {
#     :type => "compiled",
#     :style => [:functional]
#   },
#   :scala => {
#     :type => "compiled",
#     :style => [:functional]
#   }
# }
# puts other_hash[:ruby]
# puts final_hash[:ruby]