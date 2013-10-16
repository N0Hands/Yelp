class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t| 
    	t.string :user 
    	t.references :reviews
    end
  end
end
