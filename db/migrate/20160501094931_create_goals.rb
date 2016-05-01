class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.text       :title
      t.references :owner, polymorphic: true, index: true
      t.integer    :priority
      t.datetime   :accomplished_at
      t.datetime   :archived_at
      t.datetime   :deactivated_at

      t.timestamps null: false
    end
    add_index :goals, :owner_id
  end
end
