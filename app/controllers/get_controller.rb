class GetController < ApplicationController

  def get_key
    parsarr=[]
    params.each do |key,value|
      parsarr << [key, value]
    end
    val_to_get = parsarr[0]
    @key_get = val_to_get[1]
    @val_get = session[@key_get]
    if validate
      # redirect_to "/keys?#{@key_get}=#{@val_get}"
    end
  end

  private
  def validate
    if @val_get.nil?
      flash[:notice] = "You did not provide a valid key to retrieve"
      redirect_to info_url
      return false
    else
      return true
    end
  end

end
