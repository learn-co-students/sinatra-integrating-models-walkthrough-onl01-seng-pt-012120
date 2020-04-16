require_relative 'config/environment'
require_relative 'models/text_analyzer.rb' #this links our text_analyzer.rb file - MODEL to CONTROLLER

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do #receives the form data through params and renders the results page.
    @analyzed_text = TextAnalyzer.new(params[:user_text]) #now we have an instance saved to an instance variable
    erb :results
  end

end
