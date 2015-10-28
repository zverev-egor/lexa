class Manipuulyator < ActiveRecord::Base
	validates :name, presence: true

  has_attached_file :foto, styles: {medium: '300x300', thumb: '100x100', crug: 'border-radius:50%'}
  validates_attachment :foto, content_type: {content_type: ['image/jpg','image/jpeg','image/png','image/gif']}


scope :ordering,->{order(:name)}

  def edit?(u)
    u && u.admin?
  end

  def self.add?(u)
    u && u.admin?
  end
end
