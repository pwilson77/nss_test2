class FileuploadsController < ApplicationController

    def index
        @fileupload = Fileupload.all
    end

    def new 
        @fileupload = Fileupload.new
    end

    def create
        uploaded_io = params[:fileupload][:filename]
        File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
          file.write(uploaded_io.read)
        end


        @fileupload = Fileupload.new(filename: uploaded_io.original_filename)


        if @fileupload.save
            CreateDatamodelJob.perform_later(uploaded_io.original_filename)
            redirect_to root_url
        else  
            redirect_to "fileuploads#new"
        end
    end

end
