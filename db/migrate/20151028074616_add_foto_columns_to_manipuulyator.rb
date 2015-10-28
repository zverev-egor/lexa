class AddFotoColumnsToManipuulyator < ActiveRecord::Migration
  def self.up
    change_table :manipuulyators do |t|
      t.has_attached_file :foto
    end
  end

  def self.down
    drop_attached_file :manipuulyators, :foto
  end
end
