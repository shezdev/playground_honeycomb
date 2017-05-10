require "Broadcaster"

describe Broadcaster do
  subject(:broadcaster) { described_class.new}

  describe "#initialize" do
    context "when created" do
      it "has an ID" do
        expect {broadcaster.id}.not_to raise error
      end
    end
  end

end
