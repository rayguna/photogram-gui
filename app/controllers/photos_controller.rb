class PhotosController < ApplicationController
  def index
    matching_photos = Photo.all

    @list_of_photos = matching_photos.order({:created_at => :desc})
    
    render({:template => "photo_templates/index"})
  end  

  def show
    
    render({:template => "photo_templates/show"})

    #url_username = params.fetch("path_username")
    
    #params.fetch("path_username")
    
    #matching_usernames = User.where({:username => url_username})
    
    #@the_user = matching_usernames.first

    #if @the_user == nil
    #  redirect_to("/404")
    #else
    #  render({:template => "user_templates/show"})
    #end
  end  
end
