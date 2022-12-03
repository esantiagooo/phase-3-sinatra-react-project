require 'pry'
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

  post '/roommate' do 
    # binding.pry
    roommate = Roommate.create(
      firstname: params[:firstname],
      lastname: params[:lastname],
      gender: params[:age],
      age: params[:age]
    )
    roommate.to_json
  end

  get '/review' do
    review = Review.all

    review.to_json
  end

  post '/review' do
    # binding.pry
    review = Review.create(
      friendly: params[:friendly],
      clean: params[:clean],
      vibes: params[:vibes],
      foodthief: params[:foodthief],
      comment: params[:comment],
      roommate_id: params[:roommate_id]
    )
    review.to_json
  end

  patch '/review/:id' do
    # binding.pry
    review = Review.find(params[:id])
    review.update(
      friendly: params[:friendly],
      clean: params[:clean],
      vibes: params[:vibes],
      foodthief: params[:foodthief],
      comment: params[:comment]
    )
    review.to_json
  end

  delete '/review/:id' do
    review = Review.find(params[:id])
    # find the review base on the id
    review.destroy
    # delete the review
    review.to_json
    # send a response with the deleted review as JSON
  end

end
