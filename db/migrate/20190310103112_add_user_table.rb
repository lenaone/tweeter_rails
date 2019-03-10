class AddUserTable < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |table|
      table.string :firstname
      table.string :lastname
      table.string :email
      table.string :password
      table.timestamps
    end
  end
end

