class CreateDefinitions < ActiveRecord::Migration[6.0]
  def change
    create_table :definitions do |t|
      t.integer :word_id
      t.string :content
      t.integer :likes
  

      t.timestamps
    end
  end
end
