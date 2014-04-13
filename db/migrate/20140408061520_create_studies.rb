class CreateStudies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
      t.string :degree
      t.string :institution
      t.integer :year
      t.decimal :score
      t.decimal :SAT
      t.decimal :GPA

      t.timestamps
    end
  end
end
