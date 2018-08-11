class CreateTutors < ActiveRecord::Migration[5.2]
  def change
    create_table :tutors do |t|
      t.float :rating
      t.integer :rating_count
      t.string :linkedin_ID
      t.string :skype_ID

      t.references :user, foreign_key: true
      t.string :status     

      t.timestamps
    end
  end
end
