class Link < ActiveRecord::Base

  before_validation :shorten

  validates :original, :presence => true, :uniqueness => true, :format => { :with => /^https?:\/\// }
  validates :short, :presence => true

  def shorten
    self.short = Link.last.nil? ? 'a' : Link.last.short.next if short.blank?
    short
  end

  def short_url
    "#{configatron.domain.to_s}/#{short}"
  end

end
