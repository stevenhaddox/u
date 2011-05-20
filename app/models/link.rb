require 'socket'
class Link < ActiveRecord::Base

  before_save :shorten

  validates :original, :presence => true, :uniqueness => true, :format => { :with => /^https?:\/\// }

  def shorten
    uid = Link.last.nil? ? 'a' : Link.last.short.next
    self.short = uid.next
  end

  def short_url
    "#{configatron.domain.to_s}/#{short}"
  end

end