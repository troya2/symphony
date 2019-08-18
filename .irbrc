######################################################################
# enable Hirb
######################################################################

begin
  require 'rubygems'
rescue LoadError => err
  warn "Couldn't load RubyGems: #{err}"
end

# NOTE: Hirb can caused errors to appear in Rails consoles when using custom SQL queries where the output
# If this happens, disable Hirb by executing `Hirb.disable`
Hirb.enable
