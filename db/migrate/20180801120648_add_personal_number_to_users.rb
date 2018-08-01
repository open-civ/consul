class AddPersonalNumberToUsers < ActiveRecord::Migration
  def change
    add_column :users, :personal_number, :string
  end
end