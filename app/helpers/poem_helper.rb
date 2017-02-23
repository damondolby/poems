module PoemHelper
  def get_types
    Type.find(:all)
  end
  
    
  def get_poems
    return [] if session[:selected_type].nil?
    return Poem.find(:all, :conditions => { :type_id => session[:selected_type].id})
  end
  
  def get_selected_type_name
    return "" if session[:selected_type].nil?
    return session[:selected_type].name
  end
end
