class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      # "magic" command that creates two columns, created_at and updated_at
      t.timestamps
    end
  end
end
