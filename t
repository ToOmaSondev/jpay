[1mdiff --git a/app/controllers/application_controller.rb b/app/controllers/application_controller.rb[m
[1mindex 09705d1..6b4dcfa 100644[m
[1m--- a/app/controllers/application_controller.rb[m
[1m+++ b/app/controllers/application_controller.rb[m
[36m@@ -1,2 +1,3 @@[m
 class ApplicationController < ActionController::Base[m
[32m+[m[32m  before_action :authenticate_user![m
 end[m
[1mdiff --git a/app/controllers/pages_controller.rb b/app/controllers/pages_controller.rb[m
[1mindex 45f463e..c4e7c93 100644[m
[1m--- a/app/controllers/pages_controller.rb[m
[1m+++ b/app/controllers/pages_controller.rb[m
[36m@@ -1,4 +1,20 @@[m
 class PagesController < ApplicationController[m
[32m+[m[32m  skip_before_action :authenticate_user!, only: :home[m
   def home[m
[32m+[m[32m    @items = Item.all[m
[32m+[m[32m  end[m
[32m+[m
[32m+[m[32m  def dashboard[m
[32m+[m[32m    @my_items = Item.where(user: current_user)[m
[32m+[m[32m    @bookings = Booking.where(user: current_user)[m
[32m+[m
[32m+[m[32m    @active_incoming_bookings = Booking.joins(:item).where(bookings: { status: 1..2 },  items: { user_id: current_user })[m
[32m+[m[32m    @inactive_incoming_bookings = Booking.joins(:item).where(bookings: { status: 3..4 }, items: { user_id: current_user })[m
[32m+[m[32m  end[m
[32m+[m
[32m+[m[32m  private[m
[32m+[m
[32m+[m[32m  def list_params[m
[32m+[m[32m    params.require(:item).permit(:name, :item_id)[m
   end[m
 end[m
[1mdiff --git a/app/models/booking.rb b/app/models/booking.rb[m
[1mindex bbb0897..36f72b0 100644[m
[1m--- a/app/models/booking.rb[m
[1m+++ b/app/models/booking.rb[m
[36m@@ -4,5 +4,5 @@[m [mclass Booking < ApplicationRecord[m
 [m
   validates :begin_date, :end_date, presence: true[m
 [m
[31m-  enum status: {pending: 1, accepted: 2, cancelled: 3, declined: 4}[m
[32m+[m[32m  enum status: { pending: 1, accepted: 2, cancelled: 3, declined: 4 }[m
 end[m
[1mdiff --git a/app/views/pages/home.html.erb b/app/views/pages/home.html.erb[m
[1mindex 723ebc2..5dfeee0 100644[m
[1m--- a/app/views/pages/home.html.erb[m
[1m+++ b/app/views/pages/home.html.erb[m
[36m@@ -1,3 +1,6 @@[m
 [m
 <h1>Pages#home</h1>[m
[31m-<p>Find me in app/views/pages/home.html.erb</p>[m
\ No newline at end of file[m
[32m+[m[32m<p>Find me in app/views/pages/home.html.erb</p>[m
[32m+[m[32m<% @items.each do |item| %>[m
[32m+[m[32m  <p><%= item.name %></p>[m
[32m+[m[32m<% end %>[m
[1mdiff --git a/config/routes.rb b/config/routes.rb[m
[1mindex 4e416f9..837883a 100644[m
[1m--- a/config/routes.rb[m
[1m+++ b/config/routes.rb[m
[36m@@ -1,5 +1,6 @@[m
 Rails.application.routes.draw do[m
   devise_for :users[m
   root to: 'pages#home'[m
[32m+[m[32m  get '/dashboard', to: 'pages#dashboard'[m
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html[m
 end[m
[1mdiff --git a/db/seeds.rb b/db/seeds.rb[m
[1mindex 9bd4ef1..ffbee53 100644[m
[1m--- a/db/seeds.rb[m
[1m+++ b/db/seeds.rb[m
[36m@@ -19,5 +19,12 @@[m [mimage2 = Item.create!(name: "Image3", price: '18', size: '40x30', user: rayane)[m
 [m
 Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: rayane, item: image)[m
 Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: nico, item: image2)[m
[32m+[m[32mBooking.create!(begin_date: Date.today, end_date: Date.today + 1, user: max, item: image)[m
[32m+[m[32mBooking.create!(begin_date: Date.today, end_date: Date.today + 1, user: thomas, item: image2)[m
[32m+[m
[32m+[m[32mBooking.create!(begin_date: Date.today, end_date: Date.today + 1, user: rayane, item: image, status: 3)[m
[32m+[m[32mBooking.create!(begin_date: Date.today, end_date: Date.today + 1, user: nico, item: image2, status: 3)[m
[32m+[m[32mBooking.create!(begin_date: Date.today, end_date: Date.today + 1, user: max, item: image, status: 4)[m
[32m+[m[32mBooking.create!(begin_date: Date.today, end_date: Date.today + 1, user: thomas, item: image2, status: 4)[m
 [m
 puts 'We create a fake guys'[m
