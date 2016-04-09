require 'rps'

describe Game do 
  it "prints out welcome message" do
    welcome = "Welcome to ROCK, PAPER, SCISSORS\nPlease insert your name: \n"
    expect{ subject }.to output(welcome).to_stdout
  end
  
  describe "#user_setup" do
    before do
      object = double
      expect(subject).to receive(:gets).and_return(object).twice
      expect(object).to receive(:chomp).and_return(:user_name)
      expect(object).to receive(:chomp).and_return(:user_pick)
    end

    it "sets @user_name and @user_pick according to user\'s input" do
      subject.user_setup

      expect(subject.instance_variable_get(:@user_name)).to eq :user_name
      expect(subject.instance_variable_get(:@user_pick)).to eq :user_pick
    end
  end


end