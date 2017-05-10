#!/usr/bin/env ruby

require './lib/broadcaster'
require './lib/delivery'
require './lib/material'
require './lib/printer'
require './lib/order'

standard_delivery = Delivery.new(:standard, 10.0)
express_delivery = Delivery.new(:express, 20.0)

broadcaster_1 = Broadcaster.new(1, 'Viacom')
broadcaster_2 = Broadcaster.new(2, 'Disney')
broadcaster_3 = Broadcaster.new(3, 'Discovery')
broadcaster_4 = Broadcaster.new(4, 'ITV')
broadcaster_5 = Broadcaster.new(5, 'Channel 4')
broadcaster_6 = Broadcaster.new(6, 'Bike Channel')
broadcaster_7 = Broadcaster.new(7, 'Horse and Country')

material = Material.new('WNP/SWCL001/010')

order = Order.new(material)

order.add broadcaster_1, standard_delivery
order.add broadcaster_2, standard_delivery
order.add broadcaster_3, express_delivery

# print order.output

#----new
print order.print_output
#-----
print "\n"
