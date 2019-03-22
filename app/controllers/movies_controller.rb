require 'httparty'


class MoviesController < ApplicationController

   	include HTTParty
   	format :json

    def index
    @movies = HTTParty.get('https://swapi.co/api/films',
    :headers =>{'Content-Type' => 'application/json'} )['results']

  end

end