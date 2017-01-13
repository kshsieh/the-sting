class CreateTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
      t.string :name
      t.timestamps
    end

    add_index :topics, :name
  end
end
