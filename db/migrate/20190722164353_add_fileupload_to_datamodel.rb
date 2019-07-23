class AddFileuploadToDatamodel < ActiveRecord::Migration[5.2]
  def change
    add_reference :datamodels, :fileupload, foreign_key: true
  end
end
