module Phaser
  class Signal
    include Native
    
   alias_native :add
   alias_native :add_once, :addOnce
   alias_native :dispose
  end
end