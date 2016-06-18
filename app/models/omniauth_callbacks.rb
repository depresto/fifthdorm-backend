class User                                                                      
  module OmniauthCallbacks                                                      
    ["facebook"].each do |provider|          
      define_method "find_or_create_for_#{provider}" do |response|              
        uid = response["uid"]                                                   
        data = response["info"]                                                 
                                                                                
        if user = Authorization.where("provider" => provider , "uid" => uid).first.try(:user)
          user                                                                  
        elsif user = User.find_by_email(data["email"])                          
          user.authorizations << Authorization.new(:provider => provider, :uid => uid )
          user                                                                  
        else                                                                    
          user = User.new(email: data["email"], name: data['nickname'] || data['name'])
                                                                                                                                                                                     
          if user.save(:validate => false)                                      
            user.authorizations << Authorization.new(:provider => provider, :uid => uid )
            return user                                                         
          else                                                                  
            Rails.logger.warn("User.create_from_hash failed, #{user.errors.inspect}")
            return nil                                                          
          end                                                                   
        end                                                                     
      end                                                                       
    end                                                                         
  end                                                                           

  def bind_service(response)                                                    
    provider = response["provider"]                                             
    uid = response["uid"]                                                       
    authorizations.create(:provider => provider , :uid => uid )                 
  end

  def update_without_current_password(params, *options)                         
    params.delete(:current_password)                                            
                                                                                                                                                                                     
    if params[:password].blank?                                                 
      params.delete(:password)                                                  
      params.delete(:password_confirmation) if params[:password_confirmation].blank?
    end                                                                         
                                                                                
    result = update_attributes(params, *options)                                
                                                                                
    clean_up_passwords                                                          
    result                                                                      
  end
end