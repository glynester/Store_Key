class GetController < ApplicationController

  def get_key
    parsarr=[]
    params.each do |key,value|
      parsarr << [key, value]
    end
    val_to_get = parsarr[0]
    @key_get = val_to_get[1]
    @val_get = session[@key_get]
  end

end
