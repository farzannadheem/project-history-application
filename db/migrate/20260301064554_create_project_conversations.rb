class CreateProjectConversations < ActiveRecord::Migration[8.1]
  def change
    create_table :project_conversations do |t|
      t.references :project, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :comment
      t.integer :old_status
      t.integer :new_status

      t.timestamps
    end
  end
end
