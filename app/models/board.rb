# == Schema Information
#
# Table name: boards
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Board < ApplicationRecord
  has_many(:posts, class_name: "Post", foreign_key: "board_id")
  def expired_posts 
    expired = posts.where('expires_on <= ?', Date.today)
    return expired 
  end 
  def valid_posts 
    not_expired = posts.where('expires_on > ?', Date.today)
    return not_expired 
  end 
end
