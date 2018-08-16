class Api::V1::GenesController < ApplicationController

	def index
		@genes = Gene.all
		render json: @genes
	end

	def show
		@gene = Gene.find(params[:id])
		render json: @gene
	end

	def create
		@gene = Gene.new(gene_params)
		if (@gene.valid?)
			@gene.save
			render json: @gene
		else
			render :json => { :errors => @gene.errors.full_messages }
		end

	end

	private

	def gene_params
		params.require('gene').permit(:artsey_id, :title, :date, :category, :medium, :thumbnail, :image_large, :image_square, :artist_id, :gene_id) 	
	end
end
