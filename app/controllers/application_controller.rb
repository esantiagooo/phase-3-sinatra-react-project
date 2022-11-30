class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/roommate' do
    roommate = Roommate.all.order(:firstname)
    # Active record makes it easy to return all roommates from the database
    # convert the list of Active record objects into JSON formatted strings.
    roommate.to_json
  end

  get '/roommate/:id' do
    roommate = Roommate.find(params[:id])
    roommate.to_json(include: :reviews)
    # Through Active record method the user can search for a specific id, through the find method.
    # to_json method allows the user to include a second arguemnt. such as associated reviews to that specific id
  end

end
