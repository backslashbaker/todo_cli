# frozen_string_literal: true

require_relative '../lib/display'

describe Display do
  context 'welcome message ' do
    it 'displays a welcome message to users' do
      display = Display.new

      display.welcome_message

      expect do
        display.welcome_message
        expect { display.welcome_message }.to output("Welcome to Todo CLI.\nA simple todo app for your terminal\n").to_stdout
      end
    end
  end
end
