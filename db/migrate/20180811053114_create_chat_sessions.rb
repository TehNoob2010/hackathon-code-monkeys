class CreateChatSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :chat_sessions do |t|
      t.references :student, foreign_key: true
      t.references :tutor, foreign_key: true
      t.timestamp :started_at
      t.timestamp :ended_at

      t.timestamps
    end
  end
end
