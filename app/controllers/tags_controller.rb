class TagsController < ApplicationController
	def index
		@tags = Tag.all
		@tag = Tag.new
	end

	def show
		@tag = Tag.find(params[:id])
	end

	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy

		flash.notice = "Tag '#{@tag.name}' removed!"

		redirect_to tags_path
	end
end
