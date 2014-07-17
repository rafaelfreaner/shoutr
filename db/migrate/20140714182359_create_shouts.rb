class CreateShouts < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
    	t.text :content
    	t.belongs_to :user
    	t.timestamps
    end
  end
end
