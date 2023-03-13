require 'test_results.rb'

RSpec.describe Report do
  describe "#generate" do
    context "when given a string with all three colors" do
      it "counts the number of each color" do
        report = Report.new("green, RED, amber, GREEN")
        expect(report.generate).to eq("Green: 2\nAmber: 1\nRed: 1")
      end
    end

    context "when given a string with only one color" do
      it "counts the number of the one color" do
        report = Report.new("Green")
        expect(report.generate).to eq("Green: 1")
      end
    end

    context "when given a string with uncounted values" do
      it "counts the number of each color and uncounted values" do
        report = Report.new("Green, foo, bar, Amber, Baz, red, green")
        expect(report.generate).to eq("Green: 2\nAmber: 1\nRed: 1\nUncounted: 3")
      end
    end

    context "when given a string without commas between values" do
      it "counts the number of each color" do
        report = Report.new("GreenAmberRed")
        expect(report.generate).to eq("Green: 1\nAmber: 1\nRed: 1")
      end
    end

    context "when given a string with different capitalization" do
      it "counts the number of each color" do
        report = Report.new("GREEN, AmBeR, red, green")
        expect(report.generate).to eq("Green: 2\nAmber: 1\nRed: 1")
      end
    end

    context "when given a string with no test results" do
      it "returns an empty string" do
        report = Report.new("")
        expect(report.generate).to eq("")
      end
    end
  end
end
