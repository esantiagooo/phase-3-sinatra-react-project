class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/roommate' do
    roommate = Roommate.all
    # Active record makes it easy to return all roommates from the database
    # convert the list of Active record objects into JSON formatted strings.
    roommate.to_json
  end

end
