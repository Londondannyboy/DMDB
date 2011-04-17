class Film < ActiveRecord::Base
  validates_numericality_of :rating, :greater_than=>0, :less_than =>6
  validates_presence_of :url, :title
  validates_uniqueness_of :url
end

# == Schema Information
#
# Table name: films
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  url        :string(255)
#  created_at :datetime
#  updated_at :datetime
#  rating     :integer
#

