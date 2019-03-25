class StarshipsController < ApplicationController
  before_action :set_starship, only: [:show, :edit, :update, :destroy]

  # GET /starships
  # GET /starships.json
  def index
    @starships = Starship.all
  end

  # GET /starships/1
  # GET /starships/1.json
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

    
    @starship = HTTParty.get("https://swapi.co/api/starships/#{params[:id]}",
    :headers =>{'Content-Type' => 'application/json'} )

    @pilots = []
    @starship['pilots'].each do |pilot|
      pilot_id = pilot.split('/')[5]
      @pilots.push(HTTParty.get("https://swapi.co/api/people/#{pilot_id}",
    :headers =>{'Content-Type' => 'application/json'} ))
    end

    @films = []
    @starship['films'].each do |film|
      film_id = film.split('/')[5]
      @films.push(HTTParty.get("https://swapi.co/api/films/#{film_id}",
    :headers =>{'Content-Type' => 'application/json'} ))
    end

  end

  # GET /starships/new
  def new
    @starship = Starship.new
  end

  # GET /starships/1/edit
  def edit
  end

  # POST /starships
  # POST /starships.json
  def create
    @starship = Starship.new(starship_params)

    respond_to do |format|
      if @starship.save
        format.html { redirect_to @starship, notice: 'Starship was successfully created.' }
        format.json { render :show, status: :created, location: @starship }
      else
        format.html { render :new }
        format.json { render json: @starship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /starships/1
  # PATCH/PUT /starships/1.json
  def update
    respond_to do |format|
      if @starship.update(starship_params)
        format.html { redirect_to @starship, notice: 'Starship was successfully updated.' }
        format.json { render :show, status: :ok, location: @starship }
      else
        format.html { render :edit }
        format.json { render json: @starship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /starships/1
  # DELETE /starships/1.json
  def destroy
    @starship.destroy
    respond_to do |format|
      format.html { redirect_to starships_url, notice: 'Starship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_starship
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def starship_params
      params.require(:starship).permit(:name, :model, :manufacturer, :cost_in_credits, :length, :max_atmosphering_speed, :crew, :passengers, :cargo_capacity, :consumables, :hyperdrive_rating, :mglt, :starship_class, :pilots)
    end
end
