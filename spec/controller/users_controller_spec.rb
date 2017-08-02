require 'rails_helper'

describe UsersController do

  context "signup" do
    it "should failed" do
      post :create, params: { user: { email: 'zhihui' } }
      expect(response).to render_template("new")
    end

    it "should success" do
      post :create, params: { user:
                              {
        email: '13269724310@163.com',
        password: '666666',
        password_confirmation: '666666'
        }
      }
      expect(response).to redirect_to(new_session_path)
    end
  end

end
