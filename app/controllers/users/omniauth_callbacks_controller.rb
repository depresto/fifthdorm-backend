class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  def self.provides_callback_for(*providers)                                    
    providers.each do |provider|                                                                                                                                                     
      class_eval %Q{                                                            
        def #{provider}                                                         
          if not current_user.blank?                                            
            current_user.bind_service(env["omniauth.auth"])#Add an auth to existing
            redirect_to edit_user_registration_path, :notice => "Bind accout #{provider} successfully"
          else                                                                  
            @user = User.find_or_create_for_#{provider}(env["omniauth.auth"])   
                                                                                
            if @user.persisted?                                                 
              flash[:notice] = "Signed in with #{provider.to_s.titleize} successfully."
              sign_in_and_redirect @user, :event => :authentication, :notice => "Login successfully"
            else                                                                
              redirect_to new_user_registration_url                             
            end                                                                 
          end                                                                   
        end                                                                     
      }                                                                         
    end                                                                         
  end                                                                           
                                                                                
  provides_callback_for :facebook            
                                                                                
  # This is solution for existing accout want bind Google login but current_user is always nil
  # https://github.com/intridea/omniauth/issues/185                             
  def handle_unverified_request                                                 
    true                                                                        
  end   

  # You should also create an action method in this controller like this:
  # def twitter
  # end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
end
