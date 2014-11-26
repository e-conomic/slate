module RedcarpetHeaderFix
  def header(text, level)
  	clean_id = text.downcase.gsub(/( +|\.+)/, '-').gsub(/[^a-zA-Z0-9\-_]/, '')
  	if level = 1
    	"<h#{level} id='#{clean_id} class="sticky"'>#{text}</h#{level}>"
    else if level = 2
    	"<h#{level} id='#{clean_id} class="sticky"'>#{text}</h#{level}>"
	else
		"<h#{level} id='#{clean_id}'>#{text}</h#{level}>"
	end
  end
end

require 'middleman-core/renderers/redcarpet'
Middleman::Renderers::MiddlemanRedcarpetHTML.send :include, RedcarpetHeaderFix
