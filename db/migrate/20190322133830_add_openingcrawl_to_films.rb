class AddOpeningcrawlToFilms < ActiveRecord::Migration[5.2]
  def change
    add_column :films, :openingcrawl, :string
  end
end
