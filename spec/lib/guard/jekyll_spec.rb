require 'guard/compat/test/helper'
require 'guard/jekyll'

RSpec.describe Guard::Jekyll do
  let(:site) { instance_double("::Jekyll::Site") }

  before do
    allow(Guard::Compat::UI).to receive(:info)
    allow(Guard::Compat::UI).to receive(:error)

    allow(::Jekyll::Site).to receive(:new).and_return(site)
    allow(::Jekyll).to receive(:configuration).and_return({})
  end

  describe '#start' do
    it 'processes the site' do
      expect(site).to receive(:process)
      subject.start
    end
  end

  describe '#run_on_modifications' do
    it 'processes the site' do
      expect(site).to receive(:process)
      subject.run_on_modifications(%w(foo))
    end
  end

  describe '#run_all' do
    it 'processes the site' do
      expect(site).to receive(:process)
      subject.run_all
    end
  end
end
