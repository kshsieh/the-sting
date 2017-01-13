class CreateIssues < ActiveRecord::Migration[5.0]
  def change
    create_table :issues do |t|
      t.string :title
      t.boolean :urgent, default: false
      t.integer :effort
      t.datetime :expires_at
      t.text :description
      t.text :expectation
      t.text :image_url
      t.text :video_url
      t.integer :topic_id
      t.timestamps
    end

    add_index :issues, :topic_id
  end
end
