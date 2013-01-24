class CreateRemarks < ActiveRecord::Migration
  def change
    create_table :remarks do |t|
      t.string :RemarkElementName
      t.text :Remarks
      t.integer :faafacility_id

      t.timestamps
    end
    add_index :remarks, :faafacility_id
  end
end
