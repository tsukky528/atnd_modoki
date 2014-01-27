class User < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true

  def self.oauth(auth)
    uid = auth[:uid]
    params = {
      name: auth[:info][:nickname],
      token: auth[:credentials][:token],  
      secret: auth[:credentials][:secret]
    }
    @user = User.find_by(uid: uid)
    if @user.nil?
      params = params.merge(uid: uid)
      @user = User.create!(params)
    else
      @user.update(params)
    end
    #binding.pry

    @user
  end
end
