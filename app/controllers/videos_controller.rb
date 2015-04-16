class VideosController < ApplicationController

	def index
		@videos = Video.all
	end

	def create
		@videos = Video.new(video_params)
		if @videos.save
			redirect_to videos_url
		else
			render :new
		end
	end

	def new
		@videos = Video.new
	end

	private
	def video_params
		params.require(:video).permit(:publisher, :title, :url, :source)
	end

end
