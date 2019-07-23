class CreateDatamodelJob < ApplicationJob
  queue_as :default
  

  def perform(args)
    # Do something later
    workbook = RubyXL::Parser.parse(Rails.root.join('public', 'uploads', args))

    worksheet = workbook['Sheet1']

    ct = Fileupload.where(filename: args).take

    i = 1
    while !worksheet.sheet_data[i].nil?
      datamodel = Datamodel.new
      datamodel.firstname = worksheet[i][0].value
      datamodel.lastname = worksheet[i][1].value
      datamodel.age = worksheet[i][2].value
      datamodel.gender = worksheet[i][3].value
      datamodel.address = worksheet[i][4].value
      datamodel.fileupload_id = ct.id
        # p worksheet[i][j].value
      datamodel.save!

      i += 1
    end
  end
end
