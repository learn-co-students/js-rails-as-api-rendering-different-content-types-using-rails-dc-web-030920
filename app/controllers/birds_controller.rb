class BirdsController < ApplicationController
  def index
    birds = Bird.all #don't need instance variables if not using ERB
    # render 'birds/index.html.erb' #rails already renders this for you. no need to actually write that in
    # render plain: "Hello #{@birds[3].name}"
    # render json: "Remember that JSON is just object notation converted to string data, so strings also work here"
    # render json: { message: "Hashes of data will get converted to JSON" }
    # render json: ['As','well','as','arrays']
    render json: birds #don't need instance variables if not using ERB
    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }
    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json #explicitly convert to json
  end
end
