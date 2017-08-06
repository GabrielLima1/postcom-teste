class Desire < ApplicationRecord
  belongs_to :account
  belongs_to :user

  validates_presence_of :title, :action, :description, :account_id , message: 'Ops! Preencha esse Aqui!'
  mount_uploader :avatar, AvatarUploader
  mount_uploaders :documents, DocumentUploader
end
