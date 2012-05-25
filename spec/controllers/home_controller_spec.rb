require 'spec_helper'

describe HomeController, 'GET show' do
  context "As a visitor" do
    before do
      get :show
    end

    it { should respond_with(:success) }
  end
end
