class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.string :body, null: false
      t.integer :best_status, default: 0
      t.references :answerer
      t.references :question

      t.timestamps(null: false)
    end
  end
end
