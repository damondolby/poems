class PoemController < ApplicationController
  
  
  
  def poem
    @poem = Poem.find(params[:id])
    
    #Store in session so that we can access it i the poem_helper.rb for types_popout    
    #session[:selected_type] =  12#@poem.type_id
    session[:selected_type] = Type.find(:all, :conditions => { :id => @poem.type_id}).first
  end
  
  def list
    if params[:tid].nil?
      id = Type.find(:first)
    else
      id = params[:tid] 
    end
    
    #Store in session so that we can access it i the poem_helper.rb for types_popout    
    session[:selected_type] = Type.find(:all, :conditions => { :id => id}).first
    
    @poems = Poem.find(:all, :conditions => { :type_id => id})
  end
  
  def home
		@poems_highlight = Poem.find(:all, :conditions => { :highlight => 1})
		@poems_recent = Poem.find(:all, :conditions => { :date_added => (DateTime.now.midnight-30)..(DateTime.now.midnight+1)})
  end
end
