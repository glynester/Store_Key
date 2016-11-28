class SetController < ApplicationController
require 'cgi'

  def set_key
    parsarr=[]
    params.each do |key,value|
      parsarr << [key, value]
    end
    key_to_set = parsarr[0]
    @key_set = key_to_set[0]
    @val_set = key_to_set[1]
    # p parsarr
    # p "The key is #{@key_is} and the value is  #{@val_is}!!!"
    session[:@key_is] = @val_set
  end

end
