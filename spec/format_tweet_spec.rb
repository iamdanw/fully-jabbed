# frozen_string_literal: true

require 'format_tweet'

RSpec.describe FormatTweet do
  subject(:format_tweet) { described_class.new(arguments).run }

  let(:arguments) { [percentage] }
  let(:percentage) { '10.3' }
  let(:formatted) { 'formatted-tweet' }

  before do
    allow(Formatter).to receive(:format).with(percentage).and_return(formatted)
  end

  it 'outputs the formatted tweet' do
    expect { format_tweet }.to output("#{formatted}\n").to_stdout
  end
end
