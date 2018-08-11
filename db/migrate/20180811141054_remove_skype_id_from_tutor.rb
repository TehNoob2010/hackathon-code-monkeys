class RemoveSkypeIdFromTutor < ActiveRecord::Migration[5.2]
  def change
    remove_column :tutors, :skype_ID
  end
end
