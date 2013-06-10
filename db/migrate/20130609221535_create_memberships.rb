class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :task_id
      t.integer :list_id
      t.timestamp :created_at

      t.timestamps
    end
  end
end
