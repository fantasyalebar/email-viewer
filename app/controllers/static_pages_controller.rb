class StaticPagesController < ApplicationController
  def index
  	@emails = Email.all 
  	@email = Email.new
  end
end
