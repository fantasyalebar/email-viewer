class EmailsController < ApplicationController
	before_action :set_find_id, only: [:edit, :update, :show, :destroy]
	def new
		@email = Email.new
	end

	def create
	@email = Email.new(email_params)
	    if @email.save
			respond_to do |format|
				format.html {redirect_to index_path}
				format.js   ## cela va rendre create.js.erb
			end
	    else
	      render new_email_path
	    end
	end

	def show
	end

	def edit
	end 

	def update 
	    if @email.update(email_params)
	    	redirect_to index_path
	    else
	       render "edit"
	    end 
	end 

	def destroy
		@email.destroy
		redirect_to index_path
	end 

	private
	def email_params
		params.require(:email).permit(:object, :body)
	end 

	def set_find_id
		@email = Email.find(params[:id])
	end

end


