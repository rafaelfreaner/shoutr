class ShoutsController < ApplicationController
	skip_before_action :require_login

	def new
	  shout = Shout.new
	end

	def show

	end

	def create
	current_user.shouts.create(shout_params)
	redirect_to dashboard_path
	end

	private

	def shout_params
		params.require(:shout).permit(:content)
	end

end

	