Gem::Specification.new do |s|
  s.name      = "bookingsync-rack-p3p"
  s.version   = "1.0.0"
  s.authors   = ["Robert Vogel", "Mat Schaffer", "Trotter Cashion", 'Sebastien Grosjean']
  s.date      = %q{2013-11-30}
  s.email     = "dev@bookingsync.com"
  s.homepage  = "https://github.com/BookingSync/bookingsync-rack-p3p"
  s.summary   = "BookingSync-Rack-P3p will insert a P3P header into your app. This gem is configured for BookingSync needs"
  s.description  = <<-EOS.strip
BookingSync-Rack-P3p is rack middleware for inserting P3P headers into apps. This will
allow your application to serve cookies to IE when in an iframe. It will also
pull off the cookie on 304 responses, since IE does not like the cookie then.
  EOS

  s.files      = Dir['lib/**/*']
  s.add_dependency "rack", ">= 1.0.1"
end
