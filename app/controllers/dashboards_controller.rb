class DashboardsController < ApplicationController

def create

end


def show
  @user = current_user
  @photoshout = PhotoShout.new
  @textshout = TextShout.new
  @shouts = current_user.shouts
end

end