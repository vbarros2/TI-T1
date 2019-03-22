class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :title
      t.string :date
      t.string :director
      t.string :producer
      t.string :episode

      t.timestamps
    end
  end
end
