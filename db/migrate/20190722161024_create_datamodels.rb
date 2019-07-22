class CreateDatamodels < ActiveRecord::Migration[5.2]
  def change
    create_table :datamodels do |t|

      t.timestamps
    end
  end
end
