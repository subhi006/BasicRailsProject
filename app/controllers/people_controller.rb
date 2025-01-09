class PeopleController < ApplicationController
  
  def index
    @person = Person.all
  end

  def new
    @person=Person.new
    2.times { @person.addresses.build }
  end

  def create
    @person=Person.new(product_params)
    debugger
    if @person.save
      redirect_to @person
    end
  end

  private

  def product_params
    params.expect(person: [ :name ])
  end
end
