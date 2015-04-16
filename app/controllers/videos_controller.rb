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

	def update
		@video = Video.find(params[:id])

		if @video.update_attributes(video_params)
			redirect_to "/videos"
		else
			render :edit
		end
	end

	def edit
		@video = Video.find(params[:id])
	end

	def destroy
		@video = Video.find(params[:id])
		@video.destroy
		redirect_to	videos_url
	end

	private
	def video_params
		params.require(:video).permit(:publisher, :title, :url, :source)
	end

end
