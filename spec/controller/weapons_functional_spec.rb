require "rails_helper"

RSpec.describe WeaponsController, :type => :controller do
    describe "test web requests" do
        context "GET #index" do
            it "returns a success response" do
            get :index
            expect(response).to have_http_status(:ok)
            end
        end

        context "GET #show" do
            let!(:weapon) { Weapon.create(name: "Name", description: "Content of the description", dmg_type: "damage type", dmg_dice: "xdx", power_level: "1") }
            it "returns a success response" do
                expect(response).to have_http_status(:ok)
            end
        end

        context "GET #new" do
            let!(:weapon) { Weapon.create(name: "Name", description: "Content of the description", dmg_type: "damage type", dmg_dice: "xdx", power_level: "1") }
            it "returns a success response" do
                expect(response).to have_http_status(:ok)
            end
        end

        context "GET #edit" do
            let!(:weapon) { Weapon.create(name: "Name", description: "Content of the description", dmg_type: "damage type", dmg_dice: "xdx", power_level: "1") }
            it "returns a success response" do
                expect(response).to have_http_status(:ok)
            end
        end
    end
end