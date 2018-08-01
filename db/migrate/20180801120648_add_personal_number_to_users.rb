class AddPersonalNumberToUsers < ActiveRecord::Migration
  def change
    add_column :users, :personal_number, :string, null: false, default: ""
  end
end