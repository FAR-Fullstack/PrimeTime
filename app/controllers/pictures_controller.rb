class PicturesController < ApplicationController
  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params).save

  end

  def index
    @past_event = PastEvent.find(params[:id])
    @pictures = @past_event.pictures
  end

  def destroy
    @picture = Picture.find(params[:id]).destroy
  end

  private

  def picture_params
    require(params.require(:picture).permit(:id, :link))
  end
end
