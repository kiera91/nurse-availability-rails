class LoginController < ApplicationController
	protect_from_forgery with: :null_session

	def signin
		if params && params[:email_address] && params[:password]
        	nurse = Nurse.where(:email_address => params[:email_address]).first

	        if nurse
	        	if nurse.authenticate(params[:email_address], params[:password])
	          		if !nurse.api_authtoken || (nurse.api_authtoken && nurse.authtoken_expiry < Time.now)
            			auth_token = rand_string(20)
            			auth_expiry = Time.now + (24*60*60)
       	     		  nurse.update_attributes(:api_authtoken => auth_token, :authtoken_expiry => auth_expiry)
                  head 200, content_type: "text/html"
            		end
            else
        		  e = Error.new(:status => 401, :message => "Wrong Password")
        		  render :json => e.to_json, :status => 404
      		  end
        	else
          		e = Error.new(:status => 400, :message => "No USER found by this email ID")
          		render :json => e.to_json, :status => 404
        	end
      	else
          puts "no params"
        	e = Error.new(:status => 400, :message => "required parameters are missing")
        	render :json => e.to_json, :status => 400
      	end
	end
end
