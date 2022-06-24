class TopTracklistsController < ApplicationController
  def index
    render json: TopTracklist.all, status: :ok
  end

  def show
    top_tracklist = find_top_tracklist
    render json: top_tracklist, status: :ok
  end

  def create
    top_tracklist = TopTracklist.create!(top_tracklist_params)
    render json: top_tracklist, status: 201
  end

  def destroy
    top_tracklist = find_top_tracklist
    top_tracklist.destroy
    head :no_content
  end

  def previous
    user = User.find(params[:id])
    previous_list = user.top_tracklists.last
    render json: previous_list, serializer: PreviousTopTracklistSerializer, status: 200
  end

  private

  def top_tracklist_params
    params.permit(:user_id, tracklist: [])
  end

  def find_top_tracklist
    TopTracklist.find(params[:id])
  end
end
