require 'sneakers'
require 'json'

module Workers
  class LegislatorWorker
    include Sneakers::Worker
    from_queue ENV['RABBITMQ_QUEUE']

    def work(msg)
      data = JSON.parse(msg)
      LegislatorCreatorJob.perform_later(data)
      puts 'Legislator published'
      ack!
    rescue => e
      puts e.message
      ack!
    end
  end
end
