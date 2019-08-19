class AddCountriesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.column :name, :string
    end
  end
end
