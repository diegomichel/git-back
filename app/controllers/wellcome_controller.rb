class WellcomeController < ApplicationController
  def index
    render plain: Rails.application.routes.routes.collect {|r| r.path.spec.to_s}.select {|r| r =~ /^\/v1/}
  end
end
