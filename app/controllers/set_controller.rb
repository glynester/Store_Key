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
    session[@key_set] = @val_set
  end

end
