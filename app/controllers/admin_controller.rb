class AdminController < ApplicationController

  layout "admin"

  #the order is important, you should confirm current_user is exit brfore called admin_required
  before_action :authenticate_user!
  before_action :admin_required , :except => [:new_session, :create_session]

end
