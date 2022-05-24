class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.references :school, null: false, foreign_key: true
      t.integer :school_year

      t.timestamps
    end
  end
end
