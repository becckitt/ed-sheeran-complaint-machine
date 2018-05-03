require 'rails_helper'

describe JwtService do
  subject { described_class }

  let(:payload) { { 'one' => 'two' } }
  let(:token) { 'eyJhbGciOiJIUzI1NiJ9.eyJvbmUiOiJ0d28ifQ.8iIdWICexPbUOh_ljktgVvT0P5OjLCUFWNXyGgnXmPM' }

  describe '.encode' do
    it 'can encode a token' do
      expect(subject.encode(payload)).to eq(token)
    end
  end

  describe '.decode' do
    it 'can decode too' do
      expect(subject.decode(token)).to eq(payload)
    end
  end
end