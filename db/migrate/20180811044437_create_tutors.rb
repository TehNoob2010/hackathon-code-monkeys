class CreateTutors < ActiveRecord::Migration[5.2]
  def change
    create_table :tutors do |t|
      t.float :rating
      t.integer :rating_count
      t.string :linked_in

      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
