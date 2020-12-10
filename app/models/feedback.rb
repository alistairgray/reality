class Feedback < ApplicationRecord
  enum ease: [:poor, :average, :normal, :good, :great], _prefix: true
  enum communication: [:slowest, :slow, :normal, :fast, :fastest], _prefix: true
  enum interaction: [:awful, :icy, :normal, :easy, :friendly], _prefix: true
end
