Factory.define :link do |l|
  l.sequence(:original) {|i| "http://www.google.com/?q=#{i}"}
end
