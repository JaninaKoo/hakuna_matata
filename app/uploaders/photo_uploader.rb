
class PhotoUploader < CarrierWave::Uploader::Base
  #  include Cloudinary::CarrierWave
  storage :file
  def store_dir
    'app/assets/images'
  end
end

