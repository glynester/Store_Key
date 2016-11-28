class SetController < ApplicationController
require 'cgi'

  def set_key
    #Chang this! Wrong way to get params!
    parsarr=[]
    params.each do |key,value|
      parsarr << [key, value]
    end
    key_to_set = parsarr[0]
    @key_set = key_to_set[0]
    @val_set = key_to_set[1]
    if validate
      session[@key_set] = @val_set
    end
  end

  private
  def validate
    if @val_set == "set" || @val_set.nil?
      flash[:notice] = "You did not provide a suitable url"
      redirect_to info_url
      return false
    else
      return true
    end
  end

end
