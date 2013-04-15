class PhotosController < ApplicationController
  # GET /photos
  # GET /photos.json
  def index
    @albums = Album.find_all_by_twit_id(params[:view_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photos }
    end
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
    @photo = Photo.find(params[:id])
	@album = Album.find(@photo.album_id)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photos/new
  # GET /photos/new.json
  def new
    @photo = Photo.new
	@albums = Album.find_all_by_twit_id(params[:view_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photos/1/edit
  def edit
    @twit = Twit.find(params[:view_id])
	@photo = Photo.find(params[:id])
	@twit.profile_photo_id = @photo.id
	@twit.save
	respond_to do |format|
        format.html { redirect_to @twit}
        format.json { head :ok }
	end
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = Photo.new(params[:photo])

    respond_to do |format|
      if @photo.save
        format.html { redirect_to @photo, notice: 'Photo was successfully created.' }
        format.json { render json: @photo, status: :created, location: @photo }
      else
        format.html { render action: "new" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /photos/1
  # PUT /photos/1.json
  def update
    @photo = Photo.find(params[:id])

    respond_to do |format|
      if @photo.update_attributes(params[:photo])
        format.html { redirect_to @photo, notice: 'Photo was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo = Photo.find(params[:id])
	@album = Album.find(@photo.album_id)
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to album_path(@album) }
      format.json { head :ok }
    end
  end
end
