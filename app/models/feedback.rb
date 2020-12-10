class Feedback < ApplicationRecord
  enum ease: [:slowest, :slow, :normal, :fast, :fastest], _prefix: true
  enum communication: [:slowest, :slow, :normal, :fast, :fastest], _prefix: true
  enum interaction: [:slowest, :slow, :normal, :fast, :fastest], _prefix: true
end
