class StaticPagesController < ApplicationController
	
  def home
  	if logged_in?
  		@micropost=current_user.microposts.build
  		@feed_iems=current_user.feed.pagenate(page: params[:page])
  	end
  end  	

  def help
  end

  def about
  end

  def contact
  end

end
