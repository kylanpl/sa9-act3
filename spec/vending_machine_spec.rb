require 'vending_machine'

RSpec.describe VendingMachine do
  describe '#purchase' do
    it 'should decrease the inventory by the number of drinks purchased' do
      machine = VendingMachine.new
      machine.purchase(2)
      expect(machine.get_inventory).to eq(18)
    end
  end

  describe '#restock' do
    it 'should increase the inventory by the number of bottles stocked' do
      machine = VendingMachine.new
      machine.restock(5)
      expect(machine.get_inventory).to eq(25)
    end
  end

  describe '#report' do
    it 'should return a report of the current inventory' do
      machine = VendingMachine.new
      expect { machine.report }.to output("Inventory: 20 bottles\n").to_stdout
    end
  end
end
