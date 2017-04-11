class CreateTreatments < ActiveRecord::Migration[5.0]
  def change
    create_table :treatments do |t|
      t.string :name
      t.string :injury
      t.string :frequency
      t.string :duration
      t.references :patient
      t.references :clinician

      t.timestamps
    end
  end
end
