# frozen_string_literal: true

require('formatter')

RSpec.describe Formatter do
  subject(:formatter) { described_class }

  it 'adds a %' do
    expect(formatter.format('60.1')).to end_with('%')
  end
end
