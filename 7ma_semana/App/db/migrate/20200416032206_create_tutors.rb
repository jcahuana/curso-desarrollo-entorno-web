class CreateTutors < ActiveRecord::Migration[6.0]
  def change
    create_table :tutors do |t|
      t.string :name
      t.string :lastname
      t.string :dni

      t.timestamps
    end
  end
end
