class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries do |t|
      t.string :name, index: {unique: true}
      t.string :short_name, length: 3, index: {unique: true}
      t.float :points
      t.string :conf
    end
  end
end
