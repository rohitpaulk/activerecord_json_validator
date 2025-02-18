# frozen_string_literal: true

class DatabaseAdapter
  def initialize(opts = {})
    @database = opts[:database]
  end

  def establish_connection!
    ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])
  end
end
