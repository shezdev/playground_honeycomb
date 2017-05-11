#----new
require_relative 'printer'
#----

class Order
  #----new
  include Printer
  #----
  attr_accessor :material, :items

  def initialize(material)
    self.material = material
    self.items = []
  end

  def add(broadcaster, delivery)
    items << [broadcaster, delivery]
  end


#----new
  def print_output
    output(items, getTotalCost)
  end

  private

  def getTotalCost
    total_cost = items.inject(0) { |memo, (_, delivery)| memo += delivery.price }
  end
#-----
  # def output
  #   [].tap do |result| #Yields 'result' to the block, and then returns 'result'
  #     result << "Order for #{material.identifier}:"
  #
  #     result << COLUMNS.map { |name, width| name.to_s.ljust(width) }.join(' | ')
  #     result << output_separator
  #
  #     items.each_with_index do |(broadcaster, delivery), index|
  #       result << [
  #         broadcaster.name.ljust(COLUMNS[:broadcaster]),
  #         delivery.name.to_s.ljust(COLUMNS[:delivery]),
  #         ("$#{delivery.price}").ljust(COLUMNS[:price])
  #       ].join(' | ')
  #     end
  #
  #
  #     result << output_separator
  #     result << "Total: $#{total_cost}"
  #   end.join("\n")
  # end
  #
  # private
  #
  # def output_separator
  #   @output_separator ||= COLUMNS.map { |_, width| '-' * width }.join(' | ')
  # end

end
