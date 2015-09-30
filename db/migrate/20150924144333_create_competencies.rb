class CreateCompetencies < ActiveRecord::Migration
  def change
    create_table :competencies do |t|
      t.string :name
      t.integer :european_credits
      t.string :level

      t.timestamps null: false
    end
  end
end
