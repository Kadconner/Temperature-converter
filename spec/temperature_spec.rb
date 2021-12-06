require './src/temperature'

RSpec.describe Temperature do
  describe '#converter' do
    context 'From C to F ' do
      subject { Temperature.new('C', 'F', 30).converter }
      it { is_expected.to eq 86 }
    end

    context 'From F to C' do
      subject { Temperature.new('F', 'C', 12).converter }
      it { is_expected.to eq(-11.2) }
    end

    context 'From F to K' do
      subject { Temperature.new('F', 'K', 46).converter }
      it { is_expected.to eq 280.99 }
    end

    context 'From С to К' do
      subject { Temperature.new('C', 'K', 15).converter }
      it { is_expected.to eq 288.15 }
    end

    context 'From К to F' do
      subject { Temperature.new('K', 'F', 10).converter }
      it { is_expected.to eq(-441.67) }
    end
  end
end
