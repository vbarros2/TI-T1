require 'httparty'
class FilmsController < ApplicationController
  include HTTParty
  format :json

  before_action :set_film, only: [:show, :edit, :update, :destroy]

  # GET /films
  # GET /films.json
  def index
    @films_all = HTTParty.get('https://swapi.co/api/films',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @characters_all_1 = HTTParty.get('https://swapi.co/api/people',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @characters_all_2 = HTTParty.get('https://swapi.co/api/people/?page=2',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @characters_all_3 = HTTParty.get('https://swapi.co/api/people/?page=3',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @characters_all_4 = HTTParty.get('https://swapi.co/api/people/?page=4',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @characters_all_5 = HTTParty.get('https://swapi.co/api/people/?page=5',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @characters_all_6 = HTTParty.get('https://swapi.co/api/people/?page=6',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @characters_all_7 = HTTParty.get('https://swapi.co/api/people/?page=7',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @characters_all_8 = HTTParty.get('https://swapi.co/api/people/?page=8',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @characters_all_9 = HTTParty.get('https://swapi.co/api/people/?page=9',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @starships_all_1 = HTTParty.get('https://swapi.co/api/starships',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @starships_all_2 = HTTParty.get('https://swapi.co/api/starships/?page=2',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @starships_all_3 = HTTParty.get('https://swapi.co/api/starships/?page=3',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @starships_all_4 = HTTParty.get('https://swapi.co/api/starships/?page=4',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @planets_all_1 = HTTParty.get('https://swapi.co/api/planets',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @planets_all_2 = HTTParty.get('https://swapi.co/api/planets/?page=2',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @planets_all_3 = HTTParty.get('https://swapi.co/api/planets/?page=3',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @planets_all_4 = HTTParty.get('https://swapi.co/api/planets/?page=4',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @planets_all_5 = HTTParty.get('https://swapi.co/api/planets/?page=5',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @planets_all_6 = HTTParty.get('https://swapi.co/api/planets/?page=6',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @planets_all_7 = HTTParty.get('https://swapi.co/api/planets/?page=7',
    :headers =>{'Content-Type' => 'application/json'} )['results']

  end

  # GET /films/1
  # GET /films/1.json
  def show
    if params[:id] == "1"
      params[:id] = "4"
    elsif params[:id] == "2"
      params[:id] = "5"
    elsif params[:id] == "3"
      params[:id] = "6"
    elsif params[:id] == "4"
      params[:id] = "1"
    elsif params[:id] == "5"
      params[:id] = "2"
    elsif params[:id] == "6"
      params[:id] = "3"
    elsif params[:id] == "7"
      params[:id] = "7"
    elsif params[:id] == "8"
      params[:id] = "8"
    elsif params[:id] == "9"
      params[:id] = "9"
    end

    @films_all = HTTParty.get('https://swapi.co/api/films',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @characters_all_1 = HTTParty.get('https://swapi.co/api/people',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @characters_all_2 = HTTParty.get('https://swapi.co/api/people/?page=2',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @characters_all_3 = HTTParty.get('https://swapi.co/api/people/?page=3',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @characters_all_4 = HTTParty.get('https://swapi.co/api/people/?page=4',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @characters_all_5 = HTTParty.get('https://swapi.co/api/people/?page=5',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @characters_all_6 = HTTParty.get('https://swapi.co/api/people/?page=6',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @characters_all_7 = HTTParty.get('https://swapi.co/api/people/?page=7',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @characters_all_8 = HTTParty.get('https://swapi.co/api/people/?page=8',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @characters_all_9 = HTTParty.get('https://swapi.co/api/people/?page=9',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @starships_all_1 = HTTParty.get('https://swapi.co/api/starships',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @starships_all_2 = HTTParty.get('https://swapi.co/api/starships/?page=2',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @starships_all_3 = HTTParty.get('https://swapi.co/api/starships/?page=3',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @starships_all_4 = HTTParty.get('https://swapi.co/api/starships/?page=4',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @planets_all_1 = HTTParty.get('https://swapi.co/api/planets',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @planets_all_2 = HTTParty.get('https://swapi.co/api/planets/?page=2',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @planets_all_3 = HTTParty.get('https://swapi.co/api/planets/?page=3',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @planets_all_4 = HTTParty.get('https://swapi.co/api/planets/?page=4',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @planets_all_5 = HTTParty.get('https://swapi.co/api/planets/?page=5',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @planets_all_6 = HTTParty.get('https://swapi.co/api/planets/?page=6',
    :headers =>{'Content-Type' => 'application/json'} )['results']
    @planets_all_7 = HTTParty.get('https://swapi.co/api/planets/?page=7',
    :headers =>{'Content-Type' => 'application/json'} )['results']



    @film = HTTParty.get("https://swapi.co/api/films/#{params[:id]}",
    :headers =>{'Content-Type' => 'application/json'} )

    @characters = []
    @film['characters'].each do |cha|
      cha_id = cha.split('/')[5]
      @characters.push(HTTParty.get("https://swapi.co/api/people/#{cha_id}",
    :headers =>{'Content-Type' => 'application/json'} ))
    end


    @starships = []
    @film['starships'].each do |star|
      star_id = star.split('/')[5]
      @starships.push(HTTParty.get("https://swapi.co/api/starships/#{star_id}",
    :headers =>{'Content-Type' => 'application/json'} )) 
    end

    @planets = []
    @film['planets'].each do |planet|
      planet_id = planet.split('/')[5]
      @planets.push(HTTParty.get("https://swapi.co/api/planets/#{planet_id}",
    :headers =>{'Content-Type' => 'application/json'} )) 
    end






  end

  # GET /films/new
  def new
    @film = Film.new
  end

  # GET /films/1/edit
  def edit
  end

  # POST /films
  # POST /films.json
  def create
    @film = Film.new(film_params)

    respond_to do |format|
      if @film.save
        format.html { redirect_to @film, notice: 'Film was successfully created.' }
        format.json { render :show, status: :created, location: @film }
      else
        format.html { render :new }
        format.json { render json: @film.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /films/1
  # PATCH/PUT /films/1.json
  def update
    respond_to do |format|
      if @film.update(film_params)
        format.html { redirect_to @film, notice: 'Film was successfully updated.' }
        format.json { render :show, status: :ok, location: @film }
      else
        format.html { render :edit }
        format.json { render json: @film.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /films/1
  # DELETE /films/1.json
  def destroy
    @film.destroy
    respond_to do |format|
      format.html { redirect_to films_url, notice: 'Film was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_film
      #@film = self.class.get("/films/#{params[:id]}")
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def film_params
      params.require(:film).permit(:title, :date, :director, :producer, :episode)
    end
end
