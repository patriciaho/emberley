class ImagesController < ApplicationController

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def show
  @image = Image.find(params[:id])
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to :action => :show, :id => @image.id
    end
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])
    if @image.update(image_params)
      redirect_to images_path, notice: 'Image was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to images_url
  end

  private

  def image_params
    # Paperclip
    # params.require(:avatar).permit( :avatar, :name )
    params.require(:image).permit(:name, :image)
  end

end