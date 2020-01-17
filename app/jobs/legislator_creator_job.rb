class LegislatorCreatorJob < ActiveJob::Base
  queue_as :default

  def perform(legislator_hash)
    Legislator.create!(
      name: legislator_hash['name'],
      chamber: legislator_hash['chamber'],
    )
  end
end
