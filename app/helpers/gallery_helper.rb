module GalleryHelper
  def get_author photo
    photo.author.full_name
  end
end
