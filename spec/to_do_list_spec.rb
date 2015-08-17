require('rspec')
require('to_do_list')
require('pg')


describe(ToDo) do
  before() do
    ToDo.clear()
  end

  describe("#description") do
    it("lets you give it a description") do
      test_task = ToDo.new("scrub the zebra")
      expect(test_task.description()).to(eq("scrub the zebra"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(ToDo.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a task to the array of saved tasks") do
      test_task = ToDo.new("wash the lion")
      test_task.save()
      expect(ToDo.all()).to(eq([test_task]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved tasks") do
      ToDo.new("wash the lion").save()
      ToDo.clear()
      expect(ToDo.all()).to(eq([]))
    end
  end
end
