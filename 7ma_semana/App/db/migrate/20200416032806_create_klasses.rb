class CreateKlasses < ActiveRecord::Migration[6.0]
  def change
    create_table :klasses do |t|
      t.string :name
      t.integer :credit
      t.references :student, null: false, foreign_key: true
      t.references :tutor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
