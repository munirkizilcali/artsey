class Api::V1::ArtistsController < ApplicationController
	def index
		@artists = Artist.all
		render json: @artists
	end

	def show
		@artist = Artist.find(params[:id])
		render json: @artist
	end

	def create
		@artist = Artist.new(artist_params)
		if (@artist.valid?)
			@artist.save
			render json: @artist
		else
			render :json => { :errors => @artist.errors.full_messages }
		end

	end

	private

	def artist_params
		params.require('artist').permit(:name, :hometown, :birthday, :death_day, :nationality, :image, :artworks, :similar_artists, :similar_contemporary_artists) 	
	end
end
