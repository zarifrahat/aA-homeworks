class User < ApplicationRecord
    validates :username, presence: true
    validates :session_token, presence: { message: 'Password cant be blank'}
    validates :session_token, presence: true
    before_validation :ensure_session_token

    def self.find_by_credentials(username, password)
        User.find_by(username: username)
        BCrypt::Password.new(user.password_digest).is_password?(password)
    end

    def self.generate_session_token
        SecureRandom::urlsafe_base64(16)
    end

    def reset_session_token!
        session_token = User.generate_session_token
        self.save!
    end

    def ensure_session_token
        self.session_token
    end

end
