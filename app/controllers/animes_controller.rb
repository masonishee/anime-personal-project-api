class AnimesController < ApplicationController
  def index
    response = HTTP.get("http://www.omdbapi.com/?i=tt3896198&apikey=e4ea807a")
    data = response.parse
    render json: data
  end
end
