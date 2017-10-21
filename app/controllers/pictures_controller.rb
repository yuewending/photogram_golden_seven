class PicturesController < ApplicationController

    def new_form
        render("pictures/photos_new.html.erb")   
    end
    
    def show
        @the_id = params["the_id"]
        p = Photo.find(@the_id)
        @caption = p.caption
        @source = p.source
        tdiff = Time.now - Time.parse(p.created_at.strftime("%Y-%m-%d %H:%i:%s"))
        @elapsed = tdiff.to_i
        render("pictures/show.html.erb")   
    end
    
end