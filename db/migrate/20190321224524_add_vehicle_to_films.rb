class AddVehicleToFilms < ActiveRecord::Migration[5.2]
  def change
    add_column :films, :vehicle, :string
  end
end
