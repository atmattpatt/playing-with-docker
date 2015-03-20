working_directory "/srv/ruby"
listen "0.0.0.0:9000"
worker_processes 2
pid "/srv/ruby/pids/unicorn.pid"
stderr_path "/dev/stderr"
stdout_path "/dev/stdout"

before_exec do |server|
  ENV['BUNDLE_GEMFILE'] = File.expand_path('../Gemfile', File.dirname(__FILE__))
end
