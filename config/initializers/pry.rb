if defined?(::Bundler) and File.exist?(ENV['rvm_ruby_global_gems_path'])
  $LOAD_PATH.concat Dir.glob("#{ENV['rvm_ruby_global_gems_path']}/gems/*/lib")
end

if Rails.env.development?
  silence_warnings do
    begin
      require 'pry'
      IRB = Pry
    rescue LoadError
    end
  end
end