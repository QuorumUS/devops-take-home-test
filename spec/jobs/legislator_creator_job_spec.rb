require 'rails_helper'

describe LegislatorCreatorJob do
  let(:legislator) do
    {
      'name': 'Legislator',
      'chamber': 'house'
    }.as_json
  end

  it 'persists the legislator' do
    expect { described_class.perform_now(legislator) }.to change(
      Legislator,
      :count
    ).by(1)
  end

  context 'invalid parameters' do
    let(:legislator) do
      {
        'bla': 'Legislator',
        'ubable': 'house'
      }.as_json
    end

    it 'doenst persits the legislator' do
      expect { described_class.perform_now(legislator) }.
        to raise_error(ActiveRecord::RecordInvalid)
    end
  end
end
