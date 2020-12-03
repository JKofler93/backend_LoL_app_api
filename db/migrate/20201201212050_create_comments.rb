class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :comment
      t.belongs_to :user
      t.belongs_to :champion
      t.timestamps
    end
  end
end

# t.references :user_id, null: false, foreign_key: true
# t.references :champion_id, null: false, foreign_key: true