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

FactoryBot.define do
  factory :exercise do
    token { "MyString" }
  end
end
