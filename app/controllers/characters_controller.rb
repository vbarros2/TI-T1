class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]

  # GET /characters
  # GET /characters.json
  def index
  end

  # GET /characters/1
  # GET /characters/1.json
  def show
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

    
    @character = HTTParty.get("https://swapi.co/api/people/#{params[:id]}",
    :headers =>{'Content-Type' => 'application/json'} )

    @films = []
    @character['films'].each do |film|
      film_id = film.split('/')[5]
      @films.push(HTTParty.get("https://swapi.co/api/films/#{film_id}",
    :headers =>{'Content-Type' => 'application/json'} ))
    end

    @starships = []
    @character['starships'].each do |star|
      star_id = star.split('/')[5]
      @starships.push(HTTParty.get("https://swapi.co/api/starships/#{star_id}",
    :headers =>{'Content-Type' => 'application/json'} )) 
    end

  end

  # GET /characters/new
  def new
    @character = Character.new
  end

  # GET /characters/1/edit
  def edit
  end

  # POST /characters
  # POST /characters.json
  def create
    @character = Character.new(character_params)

    respond_to do |format|
      if @character.save
        format.html { redirect_to @character, notice: 'Character was successfully created.' }
        format.json { render :show, status: :created, location: @character }
      else
        format.html { render :new }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /characters/1
  # PATCH/PUT /characters/1.json
  def update
    respond_to do |format|
      if @character.update(character_params)
        format.html { redirect_to @character, notice: 'Character was successfully updated.' }
        format.json { render :show, status: :ok, location: @character }
      else
        format.html { render :edit }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy
    @character.destroy
    respond_to do |format|
      format.html { redirect_to characters_url, notice: 'Character was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_params
      params.require(:character).permit(:name, :height, :mass, :hair_color, :skin_color, :eye_color, :birth_year, :gender, :homeworld, :films, :species, :vehicles, :starships)
    end
end
