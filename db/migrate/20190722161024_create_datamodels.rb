class CreateDatamodels < ActiveRecord::Migration[5.2]
  def change
    create_table :datamodels do |t|
      t.string  :firstname
      t.string  :lastname 
      t.integer :age
      t.string  :gender
      t.string  :address

      t.timestamps
    end
  end
end
