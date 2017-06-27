class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :send_mail

  def send_mail
    #NotifyCreateStoreJob.new.perform(self)

    NotifyCreateStoreJob.set(wait: 1.minutes).perform_later(self)
  end
end
