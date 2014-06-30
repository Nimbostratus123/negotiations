class StaticController < ApplicationController
  def home
		unless signed_in?
			@page_id = 'home'
		else
			params[:id] = current_user.id
			@user = current_user
			@page_id = "user_show"
			@tabs = tabs
			render template: 'users/show'
		end
  end

  def search
  end

  def reference
		@title = 'Reference'
		@page_id = @title.downcase
  end

  def about
		@title = 'About'
		@page_id = @title.downcase
  end
end
