require "rails_helper"

describe "Weapon Attribute Requirements on Create", :type => :model do
  context "validation tests" do
      it "ensures the name is present when creating weapon" do
      weapon = Weapon.new(description: "Content of the description", dmg_type: "damage type", dmg_dice: "xdx", power_level: "1")
      expect(weapon.valid?).to eq(false)
    end

    it "should not be able to save weapon when name missing" do
      weapon = Weapon.new(description: "Content of the description", dmg_type: "damage type", dmg_dice: "xdx", power_level: "1")
      expect(weapon.save).to eq(false)
    end

    it "ensures the description is present when creating weapon" do
        weapon = Weapon.new(name: "Name", dmg_type: "damage type", dmg_dice: "xdx", power_level: "1")
        expect(weapon.valid?).to eq(false)
    end
  
    it "should not be able to save weapon when description missing" do
        weapon = Weapon.new(name: "Name", dmg_type: "damage type", dmg_dice: "xdx", power_level: "1")
        expect(weapon.save).to eq(false)
    end

    it "ensures the dmg_type is present when creating weapon" do
        weapon = Weapon.new(name: "Name", description: "Content of the description", dmg_dice: "xdx", power_level: "1")
        expect(weapon.valid?).to eq(false)
      end
  
    it "should not be able to save weapon when dmg_type missing" do
        weapon = Weapon.new(name: "Name", description: "Content of the description", dmg_dice: "xdx", power_level: "1")
        expect(weapon.save).to eq(false)
    end
  
    it "ensures the dmg_dice is present when creating weapon" do
        weapon = Weapon.new(name: "Name", description: "Content of the description", dmg_type: "damage type", power_level: "1")
        expect(weapon.valid?).to eq(false)
    end
    
    it "should not be able to save weapon when dmg_dice missing" do
        weapon = Weapon.new(name: "Name", description: "Content of the description", dmg_type: "damage type", power_level: "1")
        expect(weapon.save).to eq(false)
    end

    it "ensures the power_level is present when creating weapon" do
        weapon = Weapon.new(name: "Name", description: "Content of the description", dmg_type: "damage type", dmg_dice: "xdx")
        expect(weapon.valid?).to eq(false)
    end
    
    it "should not be able to save weapon when power_level missing" do
        weapon = Weapon.new(name: "Name", description: "Content of the description", dmg_type: "damage type", dmg_dice: "xdx")
        expect(weapon.save).to eq(false)
    end

    it "should be able to save weapon when have description and name" do
      weapon = Weapon.new(name: "Name", description: "Content of the description", dmg_type: "damage type", dmg_dice: "xdx", power_level: "1")
      expect(weapon.save).to eq(true)
    end
  end
end

describe "Weapon Attribute Requirements on Edit", :type => :model do
  context "Edit weapon" do 
    before (:each) do
      @weapon = Weapon.create(name: "Name", description: "Content of the description", dmg_type: "damage type", dmg_dice: "xdx", power_level: "1")
      end

    it "ensures the name is present when editing project" do
      @weapon.update(:name => "New Name")
      expect(@weapon.name == "New Name")
    end

    it "ensures the description is present when editing project" do
        @weapon.update(:description => "New Description")
        expect(@weapon.description == "New Description")
    end

    it "ensures the dmg_type is present when editing project" do
        @weapon.update(:dmg_type => "New Damage Type")
        expect(@weapon.dmg_type == "New Damage Type")
    end

    it "ensures the dmg_dice is present when editing project" do
        @weapon.update(:dmg_dice => "ydy")
        expect(@weapon.dmg_dice == "ydy")
    end

    it "ensures the power_level is present when editing project" do
        @weapon.update(:power_level => "2")
        expect(@weapon.power_level == "2")
    end
  end
end