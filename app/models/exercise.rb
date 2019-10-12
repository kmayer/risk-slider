# == Schema Information
#
# Table name: exercises
#
#  created_at :datetime         not null
#  id         :bigint(8)        not null, primary key
#  token      :string
#  updated_at :datetime         not null
#
# Indexes
#
#  index_exercises_on_token  (token) UNIQUE
#

class Exercise < ApplicationRecord
  has_secure_token

  has_many :votes, inverse_of: :exercise, dependent: :destroy

  def to_param
    token
  end
end
