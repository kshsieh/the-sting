class CreateScript < ActiveRecord::Migration[5.0]
  def change
    create_table :scripts do |t|
      t.text :script
      t.string :phone
      t.integer :issue_id
    end

    add_index :scripts, :issue_id
  end
end
