class NotifyCreateStoreJob < ApplicationJob
  queue_as :notify_create_store

  def perform(user)
      UserMailer.notify_create_store_email(user).deliver
  end
end
