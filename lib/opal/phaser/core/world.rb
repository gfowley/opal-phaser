module Phaser
  class World
    include Native
    
    alias_native :width
    alias_native :height
    
    alias_native :x_center, :centerX
    alias_native :y_center, :centerY
    alias_native :random_y, :randomY
    alias_native :random_x, :randomX
  end
end