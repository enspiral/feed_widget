describe "when parsing feed" do
  it "should return titles and urls for the first 5 items" do
    subject = Parser.new(url: 'http://chalkle.com/feed/', limit: 5)

    results = subject.parse

    results.length.should == 5
    results.first.should == {url: 'some url', title: 'some title'}
  end
end