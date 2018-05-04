class CreateAssignements < ActiveRecord::Migration[5.1]
  def change
    create_table :assignements do |t|
      t.references :zone, index: true, foreign_key: true
      t.references :town, index: true, foreign_key: true

      t.timestamps
    end
  end
end
