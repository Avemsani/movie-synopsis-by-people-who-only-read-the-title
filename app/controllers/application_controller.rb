class ApplicationController < ActionController::Base
 
  protect_from_forgery with: :exception
    protect_from_forgery with: :exception

  def show
    @movie = Movie.find_by_id(params['id']) 
  end
  
  def new
  end
  
  def add  
    m =Movie.new 
    m.caption=params['caption']
    m.url =params['url']
    m.title =params['title']
    m.save
    
    redirect_to "/movie/#{m.id}"
  end
  
  
  def edit
    @movie = Movie.find_by_id(params["id"])
  end
  
  def update
    m = Movie.find_by_id(params['id'])
    m.url = params['url']
    m.caption = params['caption']
    m.title =params['title']
    m.save
    
    redirect_to "/movie/#{s.id}"
  end
  
  def delete
    m = Movie.find_by_id(params['id'])
   
    m.delete
    redirect_to "/movie"
  end



    def index
      @movies = Movie.all
      
    end
end
