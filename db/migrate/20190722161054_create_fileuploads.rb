class CreateFileuploads < ActiveRecord::Migration[5.2]
  def change
    create_table :fileuploads do |t|

      t.timestamps
    end
  end
end
