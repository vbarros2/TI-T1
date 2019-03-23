require 'httparty'
class FilmsController < ApplicationController
  include HTTParty
  format :json

  before_action :set_film, only: [:show, :edit, :update, :destroy]

  # GET /films
  # GET /films.json
  def index
    @films = HTTParty.get('https://swapi.co/api/films',
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
