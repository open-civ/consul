Rack::Timeout.timeout = 120  # seconds
Rack::Timeout::Logger.update($stderr, ::Logger::ERROR)