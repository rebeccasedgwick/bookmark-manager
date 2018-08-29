require "bookmark"

describe Bookmark do
  describe ".all" do
    it "returns an array of bookmarks" do
      subject = described_class
      expect(subject.all).to include "http://www.google.com"
      expect(subject.all).to include "http://www.makersacademy.com"
      expect(subject.all).to include "http://www.destroyallsoftware.com"
    end
  end

end
