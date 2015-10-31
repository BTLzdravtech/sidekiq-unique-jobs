begin
  require 'celluloid/current'
rescue LoadError
  debug 'Celluloid is old require the old way'

  begin
    require 'celluloid'
  rescue LoadError
    debug 'Sidekiq removed dependency on celluloid'
  end
end

begin
  require 'celluloid/test'
  Celluloid.boot
rescue LoadError # rubocop:disable Lint/HandleExceptions
  # do nothing we already know celluloid is not in use
end
