require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/userbooks", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Userbook. As you add validations to Userbook, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Userbook.create! valid_attributes
      get userbooks_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      userbook = Userbook.create! valid_attributes
      get userbook_url(userbook)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_userbook_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      userbook = Userbook.create! valid_attributes
      get edit_userbook_url(userbook)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Userbook" do
        expect {
          post userbooks_url, params: { userbook: valid_attributes }
        }.to change(Userbook, :count).by(1)
      end

      it "redirects to the created userbook" do
        post userbooks_url, params: { userbook: valid_attributes }
        expect(response).to redirect_to(userbook_url(Userbook.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Userbook" do
        expect {
          post userbooks_url, params: { userbook: invalid_attributes }
        }.to change(Userbook, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post userbooks_url, params: { userbook: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested userbook" do
        userbook = Userbook.create! valid_attributes
        patch userbook_url(userbook), params: { userbook: new_attributes }
        userbook.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the userbook" do
        userbook = Userbook.create! valid_attributes
        patch userbook_url(userbook), params: { userbook: new_attributes }
        userbook.reload
        expect(response).to redirect_to(userbook_url(userbook))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        userbook = Userbook.create! valid_attributes
        patch userbook_url(userbook), params: { userbook: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested userbook" do
      userbook = Userbook.create! valid_attributes
      expect {
        delete userbook_url(userbook)
      }.to change(Userbook, :count).by(-1)
    end

    it "redirects to the userbooks list" do
      userbook = Userbook.create! valid_attributes
      delete userbook_url(userbook)
      expect(response).to redirect_to(userbooks_url)
    end
  end
end
