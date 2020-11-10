class CreateExamples < ActiveRecord::Migration[6.0]
  def change
    create_table :examples do |t|
      t.integer :word_id
      t.string :content

      t.timestamps
    end
  end
end
