class StaticPagesController < ApplicationController
  def home
   if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
   end
   #Article.where('created_at > ?', 1.weeks.ago)
    #   @latest_microposts = Micropost.where('created_at > ?', 2.weeks.ago)
    @latest_microposts = Micropost.where.not(image_file_name: nil).limit(6)
    @users  = User.all
    #   abort @latest_microposts.inspect
  end
  
#   def index
#     Article.where('created_at > ?', 1.weeks.ago)
#   end

  def help
  end
  
  def about
  end
  
  def contact
  end
end
