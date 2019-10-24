class HealthcareProvider < ApplicationRecord
    before_save { email.downcase!}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    VALID_PHONE_REGEX = [0-9]
    # VALID_ADDRESS_REGEX = [a-a0-9] 


    validates :name, presence: true, length:  {maximum: 50}
    validates :email, presence: true, length: {maximum: 200}, format: {with: VALID_EMAIL_REGEX }, 
        uniqueness: {case_sensitive: false}
    validates :password, presence: true, length: {minimum: 6}

    has_secure_password
end
