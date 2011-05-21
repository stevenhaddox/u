require 'spec_helper'

describe Link do

  describe 'Validations' do
    it "should be valid with valid attributes" do
      link = Factory.build(:link)
      link.valid? # invoke before_validation hook
      link.should be_valid
      link.save
      link.original.should_not be_nil
    end
    
    it "should not be valid without a long URL" do
      link = Factory.build(:link, :original => nil)
      link.should_not be_valid
      link.should have(2).errors_on(:original)
    end
    
    it "should not be valid unless the long URL has valid syntax" do
      link = Factory.build(:link, :original => 'Google')
      link.should_not be_valid
      link.should have(1).error_on(:original)
    end
   
    it "should not allow duplicate long URLs" do
      link1 = Factory(:link, :original => 'http://google.com/?q=1')
      link2 = Factory.build(:link, :original => 'http://google.com/?q=1')
      link2.original.should == link1.original
      link2.should_not be_valid
      link2.should have(1).error_on(:original)
    end
  end

  describe ".shorten" do
    
    it "should convert the original URL into a short URL before validating" do
      link = Factory.build(:link)
      link.short.should be_nil
      link.valid?
      link.short.should_not be_nil
    end
    
  end

  describe ".short_url" do
    it "should return a full short URL for use in views" do
      link = Factory(:link)
      link.short_url.should_not be_nil
      link.short_url.should include 'http'
    end
  end

end
