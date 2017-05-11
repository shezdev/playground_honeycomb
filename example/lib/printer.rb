module Printer

  COLUMNS = {
    broadcaster: 20, #name, width
    delivery: 8,
    price: 8
  }.freeze

  def output(items, total_cost) #total cost is new
    [].tap do |result| #Yields 'result' to the block, and then returns 'result'
      result << "Order for #{material.identifier}:"

      result << COLUMNS.map { |name, width| name.to_s.ljust(width) }.join(' | ')
      result << output_separator

      items.each_with_index do |(broadcaster, delivery), index|
        result << [
          broadcaster.name.ljust(COLUMNS[:broadcaster]),
          delivery.name.to_s.ljust(COLUMNS[:delivery]),
          ("$#{delivery.price}").ljust(COLUMNS[:price])
        ].join(' | ')
      end

      result << output_separator
      result << "Total: $#{total_cost}"
    end.join("\n")
  end

  private

  def output_separator
    @output_separator ||= COLUMNS.map { |_, width| '-' * width }.join(' | ')
  end
end
