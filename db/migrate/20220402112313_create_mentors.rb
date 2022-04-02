class CreateMentors < ActiveRecord::Migration[6.1]
  def change
    create_table :mentors do |t|
      t.string :name
      t.string :course
      t.string :description
      t.string :img
      t.string :color
      t.boolean :isMentor
      t.string :alphabet
      t.integer :count, null: false, default: 0
      t.timestamps null: false
    end
  end
end
