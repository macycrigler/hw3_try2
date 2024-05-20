class EntriesController < ApplicationController

  def show
    @entry = Entry.find_by({ "id" => params["id"] })
    if @entry
      @place = Place.find_by({ "id" => @entry["place_id"] })
    else
    end
  end
  

  def new
    @place = Place.find_by({ "id" => params["place_id"] })
  end

  def create
    @entry = Entry.new

    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["posted_on"] = params["posted_on"]
    @entry["created_at"] = params["created_at"]
    @entry["updated_at"] = params["updated_at"]

    # assign relationship  
    @entry["place_id"] = params["place_id"]

    @entry.save

    redirect_to "/places/#{@entry["place_id"]}"
  end

end
