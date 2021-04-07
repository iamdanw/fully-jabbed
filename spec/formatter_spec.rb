# frozen_string_literal: true

require('formatter')

RSpec.describe Formatter do
  subject(:format) { described_class.new(percentage).format }

  let(:percentage) { '60.1' }

  it 'adds a %' do
    expect(format).to end_with('%')
  end

  it 'includes the original percentage' do
    expect(format).to include(percentage)
  end

  it 'has a progress bar' do
    expect(format).to include('▓░')
  end

  context 'when 0%' do
    let(:percentage) { '0' }

    it 'has the right progress bar' do
      expect(format).to include('░░░░░░░░░░░░░░░')
    end
  end

  context 'when 100%' do
    let(:percentage) { '100' }

    it 'has the right progress bar' do
      expect(format).to include('▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓')
    end
  end

  context 'when 99%' do
    let(:percentage) { '99' }

    it 'has the right progress bar' do
      expect(format).to include('▓▓▓▓▓▓▓▓▓▓▓▓▓▓░')
    end
  end

  context 'when 35%' do
    let(:percentage) { '35' }

    it 'has the right progress bar' do
      expect(format).to include('▓▓▓▓▓░░░░░░░░░░')
    end
  end
end
