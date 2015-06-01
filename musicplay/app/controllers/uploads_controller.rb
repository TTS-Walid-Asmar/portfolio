class UploadsController < ApplicationController
  def new
  end

  def create
      obj = S3_bucket.objects[params[:file].orginal_filename]

      obj.write (
          file:params[:file],
          acl: :public_read
          )

      @upload = Upload.new(
          url: obj.public_url,
          name: obj.key
          )

      if @upload.save
          redirect_to uploads_path, success: 'File successfuly uploaded'
      else
          flash.now[:notice] = 'There was an error'
          render :new
      end
  end

  def index
  end
end
