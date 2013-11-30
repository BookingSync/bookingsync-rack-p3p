BookingSync-Rack-P3p is rack middleware for inserting P3P headers into apps. This will
allow your application to serve cookies to IE when in an iframe. It will also
pull off the cookie on 304 responses, since IE does not like the cookie then.

This gem is made for BookingSync P3P configuration.

Usage
-----

To use BookingSync-Rack-P3p in rails, do the following.

Add rack-p3p to your gemfile:

    gem 'bookingsync-rack-p3p'

Add it to your middleware stack in config/application.rb:

    config.middleware.insert_before ActionDispatch::Session::CookieStore, BookingSync::Rack::P3p

Enjoy.

Credits
-------

This gem was forked from https://github.com/hoopla/rack-p3p
