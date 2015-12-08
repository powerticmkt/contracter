require 'spec_helper'

describe Contracter do
  describe '.build' do
      context 'default contract' do
          it 'should not be null' do
              c = Contracter.build do
                  company 'Remi Gelinas'
                  date DateTime.now.strftime("%d:%m:%Y")
              end

              expect(c).to be_truthy
          end
      end
  end
end
