class CreateManipuulyators < ActiveRecord::Migration
  def change
    create_table :manipuulyators do |t|
    	t.string :name
    	t.text :description

      t.timestamps
    end
  end
end
