class WelcomeController < ApplicationController

  def index
    output = {:method => request.method, :params => params.except(:controller, :action)}

    puts request.inspect

    render :text => output.map{|k,v| "#{k}: #{v}"}.join("\n")
  end
end
