class CreateAuthorProfiles < ActiveRecord::Migration
  def change
    create_table :author_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.attachment :avatar
      t.references :author, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
