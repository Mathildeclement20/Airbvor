class AddAddressToAnimal < ActiveRecord::Migration[6.1]
  def change
    add_column :animals, :address, :string
  end
end
