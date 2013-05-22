class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :date
    end
  end
end