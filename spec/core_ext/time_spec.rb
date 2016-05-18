require 'spec_helper'
describe Time do
  subject(:instance) { Time.utc(2002, 10, 31, 2, 2, 2) }
  describe '#to_h' do
    subject { instance.to_h }
    it { expect(subject[:year]).to eq 2002 }
    it { expect(subject[:month]).to eq 10 }
    it { expect(subject[:day]).to eq 31 }
    it { expect(subject[:hour]).to eq 2 }
    it { expect(subject[:min]).to eq 2 }
    it { expect(subject[:sec]).to eq 2 }
    it { expect(subject[:wday]).to eq 4 }
    it { expect(subject[:yday]).to eq 304 }
    it { expect(subject[:isdst]).to eq false }
    it { expect(subject[:zone]).to eq 'UTC' }
  end

  describe '#at' do
    describe 'multiple attrs' do
      subject do
        day = instance.day - 1
        instance.at(day: day, hour: 19, min: 0)
      end
      it { expect(subject.year).to eq 2002 }
      it { expect(subject.month).to eq 10 }
      it { expect(subject.day).to eq instance.day - 1 }
      it { expect(subject.hour).to eq 19 }
      it { expect(subject.min).to eq 0 }
      it { expect(subject.sec).to eq 2 }
      it { expect(subject.isdst).to eq false }
      it { expect(subject.utc_offset).to eq 0 }
    end
    describe 'one attribute' do
      describe 'setting hour at 23' do
        subject { instance.at(hour: 23) }
        it { expect(subject.year).to eq 2002 }
        it { expect(subject.month).to eq 10 }
        it { expect(subject.day).to eq 31 }
        it { expect(subject.hour).to eq 23 }
        it { expect(subject.min).to eq 2 }
        it { expect(subject.sec).to eq 2 }
        it { expect(subject.isdst).to eq false }
        it { expect(subject.utc_offset).to eq 0 }
      end
      describe 'setting year at 2015' do
        subject { instance.at(year: 2015) }
        it { expect(subject.year).to eq 2015 }
        it { expect(subject.month).to eq 10 }
        it { expect(subject.day).to eq 31 }
        it { expect(subject.hour).to eq 2 }
        it { expect(subject.min).to eq 2 }
        it { expect(subject.sec).to eq 2 }
        it { expect(subject.isdst).to eq false }
        it { expect(subject.utc_offset).to eq 0 }
      end
      describe 'setting month at 1' do
        subject { instance.at(month: 1) }
        it { expect(subject.year).to eq 2002 }
        it { expect(subject.month).to eq 1 }
        it { expect(subject.day).to eq 31 }
        it { expect(subject.hour).to eq 2 }
        it { expect(subject.min).to eq 2 }
        it { expect(subject.sec).to eq 2 }
        it { expect(subject.isdst).to eq false }
        it { expect(subject.utc_offset).to eq 0 }
      end
      describe 'setting day at 12' do
        subject { instance.at(day: 12) }
        it { expect(subject.year).to eq 2002 }
        it { expect(subject.month).to eq 10 }
        it { expect(subject.day).to eq 12 }
        it { expect(subject.hour).to eq 2 }
        it { expect(subject.min).to eq 2 }
        it { expect(subject.sec).to eq 2 }
        it { expect(subject.isdst).to eq false }
        it { expect(subject.utc_offset).to eq 0 }
      end
      describe 'setting min at 37' do
        subject { instance.at(min: 37) }
        it { expect(subject.year).to eq 2002 }
        it { expect(subject.month).to eq 10 }
        it { expect(subject.day).to eq 31 }
        it { expect(subject.hour).to eq 2 }
        it { expect(subject.min).to eq 37 }
        it { expect(subject.sec).to eq 2 }
        it { expect(subject.isdst).to eq false }
        it { expect(subject.utc_offset).to eq 0 }
      end
      describe 'setting sec at 47' do
        subject { instance.at(sec: 47) }
        it { expect(subject.year).to eq 2002 }
        it { expect(subject.month).to eq 10 }
        it { expect(subject.day).to eq 31 }
        it { expect(subject.hour).to eq 2 }
        it { expect(subject.min).to eq 2 }
        it { expect(subject.sec).to eq 47 }
        it { expect(subject.isdst).to eq false }
        it { expect(subject.utc_offset).to eq 0 }
      end
    end
  end
end
