class ExampleJob < ApplicationJob
  def perform
    puts 'all peformed'
  end
end