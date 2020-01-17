class CreateLegislators < ActiveRecord::Migration[6.0]
  def change
    create_table :legislators do |t|
      t.string :name
      t.string :chamber

      t.timestamps
    end
  end
end
