class PhotosController < ApplicationController
  def index
    matching_photos = Photo.all

    @list_of_photos = matching_photos.order({:created_at => :desc})
    
    render({:template => "photo_templates/index"})
  end  



  def show

    #Parameters: {"path_id=>"777"}

    url_id = params.fetch("path_id")

    matching_photos = Photo.where({:id => url_id})
    
    @the_photo = matching_photos.at(0)

    render({:template => "photo_templates/show"})

  end  

  def baii
    #delete photo

    # Parameters: {"oaths_id" => "785"}

    the_id = params.fetch("path_id")

    matching_photos = Photo.where({:id => the_id})

    the_photo = matching_photos.at(0)

    the_photo.destroy

    #render({:template => "photo_templates/baii"})
    redirect_to("/photos")

  end

  def create
    #Parameters: {"input_image"=>"a", "input_caption"=>"b", "input_owner_id"=>"c"}

    input_image = params.fetch("input_image")
    input_caption = params.fetch("input_caption")
    input_owner_id = params.fetch("input_owner_id")

    a_new_photo = Photo.new
    a_new_photo.image = input_image
    a_new_photo.caption = input_caption
    a_new_photo.owner_id = input_owner_id

    a_new_photo.save

    #render({:template => "photo_templates/create"}) 

    redirect_to("/photos/" + a_new_photo.id.to_s)
  end

  def update

    the_id = params.fetch("modify_id")

    matching_photos = Photo.where({:id => the_id}) 

    the_photo = matching_photos.at(0)

    input_image = params.fetch("input_image")
    input_caption = params.fetch("input_caption")

    the_photo.save

    the_photo.image = input_image
    the_photo.caption = input_caption 

    the_photo.save

    #render({:template => "photo_templates/update"})
    redirect_to("/photos/" + the_photo.id.to_s)


  end

end
