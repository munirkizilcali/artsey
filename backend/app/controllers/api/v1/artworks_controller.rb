class Api::V1::ArtworksController < ApplicationController

	def index
		@artworks = Artwork.all
		render json: @artworks
	end

	def show
		@artwork = Artwork.find(params[:id])
		render json: @artwork
	end

	def create
		@artwork = Artwork.new(artwork_params)
		if (@artwork.valid?)
			@artwork.save
			render json: @artwork
		else
			render :json => { :errors => @artwork.errors.full_messages }
		end

	end

	private

	def artwork_params
		params.require(:artwork).permit(:artsey_id, :title, :date, :category, :medium, :thumbnail, :image_large, :image_square, :artist_id, :gene_id) 	
	end

end
