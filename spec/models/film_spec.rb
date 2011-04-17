require 'spec_helper'

describe Film do
 it 'should not be valid if rating is nil' do
   film=Film.new
   film.valid?.should == false
 end
    it 'should not be valid if rating is not a number' do
      film=Film.new(:rating => "xyz")
      film.valid?.should == false
    end
       it 'should not be valid if rating between 1 and 5' do
         film=Film.new(:rating => 7)
         film.valid?.should == false
       end
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

