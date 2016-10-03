class HomeController < ApplicationController
  def index
    @mainTitle = "Welcome in Inspinia Rails Seed Project"
    @mainDesc = "It is an application skeleton for a typical Ruby on Rails web app. You can use it to quickly bootstrap your webapp projects and dev/prod environment."
    reservation_hash = Reservation.joins(:building_location).all.group(:name).count.to_h
    @reservation_values = reservation_hash.values
    @reservation_keys = reservation_hash.keys
  end

  def minor
    @product = Product.new
  end
end
