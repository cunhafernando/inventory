require "application_system_test_case"

class EquipmentTest < ApplicationSystemTestCase
  setup do
    @equipment = equipment(:one)
  end

  test "visiting the index" do
    visit equipment_url
    assert_selector "h1", text: "Equipment"
  end

  test "should create equipment" do
    visit equipment_url
    click_on "New equipment"

    check "Allocated" if @equipment.allocated
    fill_in "Brand", with: @equipment.brand
    fill_in "Gati", with: @equipment.gati
    check "Maintenance" if @equipment.maintenance
    fill_in "Model", with: @equipment.model
    fill_in "Patrimony", with: @equipment.patrimony
    fill_in "Serial number", with: @equipment.serial_number
    fill_in "Type", with: @equipment.type
    click_on "Create Equipment"

    assert_text "Equipment was successfully created"
    click_on "Back"
  end

  test "should update Equipment" do
    visit equipment_url(@equipment)
    click_on "Edit this equipment", match: :first

    check "Allocated" if @equipment.allocated
    fill_in "Brand", with: @equipment.brand
    fill_in "Gati", with: @equipment.gati
    check "Maintenance" if @equipment.maintenance
    fill_in "Model", with: @equipment.model
    fill_in "Patrimony", with: @equipment.patrimony
    fill_in "Serial number", with: @equipment.serial_number
    fill_in "Type", with: @equipment.type
    click_on "Update Equipment"

    assert_text "Equipment was successfully updated"
    click_on "Back"
  end

  test "should destroy Equipment" do
    visit equipment_url(@equipment)
    click_on "Destroy this equipment", match: :first

    assert_text "Equipment was successfully destroyed"
  end
end
