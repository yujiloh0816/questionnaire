class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.references :survey
      t.text :content

      t.timestamps
    end
  end
end
