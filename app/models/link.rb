class Link < ActiveRecord::Base

  before_validation :shorten

  validates :original, :presence => true, :uniqueness => true, :format => { :with => /^https?:\/\// }
  validates :short, :presence => true

  def shorten
    uid = Link.last.nil? ? 'a' : Link.last.short
    self.short = uid.next
  end

  def short_url
    "#{configatron.domain.to_s}/#{short}"
  end

end
