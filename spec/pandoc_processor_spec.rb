require "spec_helper"
require "pandoc-ruby"

describe Jekyll::Converters::Markdown::PandocProcessor do

  describe "pandoc" do
    config = { "markdown" => "pandoc" }
    config = Jekyll::Configuration::DEFAULTS.merge(config)
    subject { Jekyll::Converters::Markdown::PandocProcessor.new config }
    it "converts markdown" do
      markdown = "## This is a heading"
      html = "<h2 id=\"this-is-a-heading\">This is a heading</h2>\n"
      expect(subject.convert(markdown)).to eq(html)
    end
  end

  describe "bibliography" do
    config = {
      "markdown" => "pandoc",
      "pandoc" => {
        "extensions" => {
          "bibliography" => "spec/citations.bib"
        }
      }
    }
    config = Jekyll::Configuration::DEFAULTS.merge(config)
    subject { Jekyll::Converters::Markdown::PandocProcessor.new config }
    it "converts markdown" do
      markdown = "Hmmm [@Bush:1945]"
      expect(subject.convert(markdown)).to match(/As We May Think/)
    end
  end

end
