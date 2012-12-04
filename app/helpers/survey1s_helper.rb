module Survey1sHelper
end


class Survey1sController < ApplicationController
  http_basic_authenticate_with :name => "john", :password => "neto"
  def index
  end
end