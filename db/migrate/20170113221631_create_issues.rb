class CreateIssues < ActiveRecord::Migration[5.0]
  def change
    create_table :issues do |t|
      t.string :title
      t.boolean :urgent
      t.integer :effort
      t.datetime :expires_at
      t.text :description
      t.text :expectation
      t.timestamps
    end
  end
end
