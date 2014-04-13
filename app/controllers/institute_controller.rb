class InstituteController < ApplicationController
  layout 'university'
  
  def dashboard
  @valued="active"
  @valuep=""
  @valuee=""
  end

  def editsettings
  	@valued=""
  	@valuep=""
  	@valuee="active"
  end

  def profile
  	@valued=""
  	@valuep="active"
  	@valuee=""
  end

end
