module ApplicationHelper

  def get_photo_key(object)
    if object.photo.attachment.present?
      photo_key = object.photo.key
    else
      photo_key = "No_Image_Available_g6q72z" #no photo image on cloudinary
    end 
 end
end
