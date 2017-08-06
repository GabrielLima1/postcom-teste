class Account < ApplicationRecord
  belongs_to :users
  has_many :desires
  validates_presence_of :name, :description, message: 'Ops! Preencha esse Aqui!'
  #validates :avatar, presence: true
  mount_uploader :avatar, AvatarUploader
  #mount_uploaders :documents, DocumentUploader

  # before_create :send_user
  #
  # def send_user
  #   self.user_id = current_user_id
  #   self.save
  # end
end
