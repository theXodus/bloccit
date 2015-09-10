class User < ActiveRecord::Base
  before_save do 
    format_email
    format_name
  end
  
  
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name, length: { minimum: 1, maximum: 100 }, presence: true
  
  validates :password, presence: true, length: { minimum: 6 }

  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 100 },
            format: { with: EMAIL_REGEX }
            
  has_secure_password
  
  private
  def format_email
    self.email = email.downcase
  end 
  
  def format_name
    self.name = name.split(' ').map { |w| w.capitalize }.join(' ')
  end
end
