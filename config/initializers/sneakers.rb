require 'sneakers'

Sneakers.configure(
  log: Rails.root.join('log/sneakers.log'),
  exchange: ENV['RABBITMQ_EXCHANGE'],
  amqp: ENV['RABBITMQ_URL'] ,
)

Sneakers.logger.level = Logger::INFO
