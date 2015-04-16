class VideosController < ApplicationController

	def index
		@videos = Video.all
	end

	def create
		render :text => "Saving a YouTube video: #{params[:url]}, Title: #{params[:title]}, Publisher: #{params[:publisher]}, Source: #{params[:source]}"
	end

	def new

	end

end
