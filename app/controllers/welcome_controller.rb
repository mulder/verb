class WelcomeController < ApplicationController

  def index
    output = {:method => request.method, :params => params.except(:controller, :action).map {|k,v| "#{k} = #{v}"}.join(', ')}
    render :text => output.map{|k,v| "#{k}: #{v}\n"}.join
  end
end
