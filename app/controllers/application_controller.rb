class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception
  
  def show
    @idea=Idea.find_by_id(params['id'])
  end
  
  def new
    @idea=Idea.new
    @idea.text=params['idea']
    @idea.save
    redirect_to"/crud/#{@idea.id}"
  end
  
  def forms
  end
  
  def edit
    @idea=Idea.find_by_id(params['id'])
    
  end
  
  def update
    @idea=Idea.find_by_id(params['id'])
    @idea.text=params['idea']
    @idea.save
    redirect_to"/crud/#{@idea.id}"
    
  end
  
  def index
    @ideas=Idea.all
    
  end
end
