require 'rspec'
require_relative 'eliza_questions'



 describe 'Response' do
   it "should create the Response class" do
     expect { Response }.to_not raise_error
    # expect { George }.to raise_error
   end

end

describe 'Yelling Mode' do
  it "should upcase Response.get_answer" do
    expect(Response.get_answer("mom!", true, 4, 9)).to be_eql("TELL ME MORE ABOUT YOUR MOTHER.")
  end
end


describe 'End Session after 10 questions' do
  it "should give an exit message after 10 questions" do
    expect(Response.get_answer("mom", false, 4, 10)).to be_eql('Lets get into that next time')
  end  
  it "should give an angry exit message after 10 questions in yelling mode" do
    expect(Response.get_answer('dog', true, 10, 10)).to be_eql('NO, NO, NO')
  end
  it "should fail if the answer counter > 10" do
    expect{Response.get_answer('dog', false, 5, 11)}.to raise_error(AnswersExceededError)
  end
end
