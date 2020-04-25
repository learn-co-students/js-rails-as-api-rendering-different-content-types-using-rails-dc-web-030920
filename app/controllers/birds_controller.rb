class BirdsController < ApplicationController
  def index
    birds = Bird.all
    # render plain: "hello #{@birds[3].name}"
    # render json: {message: 'string, hashes or other data types will be converted to json'}
    # render json: ['As','well','as','arrays']
    # render json: @birds
    render json: { birds: birds, messages: ['Hello Birds', 'Goodbye Birds'] }
  end
end
