class CreateFootballClubs < ActiveRecord::Migration[6.1]
  def change
    create_table :football_clubs do |t|
      t.string :name
      t.belongs_to :country
      t.float :one
      t.float :two
      t.float :three
      t.float :four
      t.float :five
      t.float :O
    end
  end
end
