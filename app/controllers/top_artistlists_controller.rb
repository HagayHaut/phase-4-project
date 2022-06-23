class TopArtistlistsController < ApplicationController
  def index
    render json: TopArtistlist.all, status: :ok
  end

  def show
    top_artistlist = find_top_artistlist
    render json: top_artistlist, status: :ok
  end

  def create
    top_artistlist = TopArtistlist.create!(top_artistlist_params)
    render json: top_artistlist, status: 201
  end

  def destroy
    top_artistlist = find_top_artistlist
    top_artistlist.destroy
    head :no_content
  end

  def previous
    user = User.find(params[:id])
    previous_list = user.top_artistlists.last
    render json: previous_list, serializer: PreviousTopArtistlistSerializer, status: 200
  end

  private

  def top_artistlist_params
    params.permit(:user_id, artistlist: [])
  end

  def find_top_artistlist
    TopArtistlist.find(params[:id])
  end
end
