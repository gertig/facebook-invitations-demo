class HomeController < ApplicationController
  
  def index
  end
  
  def authorize
      respond_to do |format|
        format.html # authorize.html.erb
      end
  end

end
