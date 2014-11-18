require 'rails_helper'

describe Fae::Option do

  describe '#instance' do
    context 'when no option object is present' do
      it 'should create a new instance' do
        starting_options = Fae::Option.all.length
        options = Fae::Option.instance
        ending_options = Fae::Option.all.length

        expect(starting_options).to eq(0)
        expect(ending_options).to eq(1)
        expect(options).to be_a Fae::Option
      end
    end

    context 'when an option object is present' do
      it 'should return the instance' do
        options = FactoryGirl.create(:fae_option, title: 'Test Title')

        expect(options).to be_a Fae::Option
        expect(options.title).to eq('Test Title')
      end
    end
  end

end