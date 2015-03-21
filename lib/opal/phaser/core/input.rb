module Phaser
  class Input
    include Native
    
    alias_native :keyboard, :keyboard, as: Keyboard
    
    alias_native :on_down, :onDown
    alias_native :active_pointer, :activePointer
  end
end