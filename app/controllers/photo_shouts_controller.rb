class PhotoShoutsController < ApplicationController
	skip_before_action :require_login

	def new
	  shout = Shout.new
	end

	def show

	end

	def create
	photo_shout = PhotoShout.new(photo_shout_params)
	current_user.shouts.create(content: photo_shout)
	redirect_to dashboard_path
	end

	private

	def photo_shout_params
		params.require(:photo_shout).permit(:image)
	end

end