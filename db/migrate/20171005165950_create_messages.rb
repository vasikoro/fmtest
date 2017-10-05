class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.integer :sender_id, index: true, foreign_key: true
      t.integer :recipient_id, index: true, foreign_key: true
      t.text :body
      t.timestamps
    end
  end
end
