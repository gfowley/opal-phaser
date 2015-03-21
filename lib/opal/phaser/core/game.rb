module Phaser
  AUTO   = `Phaser.AUTO`
  WEBGL  = `Phaser.WEBGL`
  CANVAS = `Phaser.CANVAS`

  class Game
    include Native

    def initialize(arg_hash = {}, &block)

      width       = arg_hash[:width]
      height      = arg_hash[:height]
      renderer    = arg_hash[:renderer]
      parent      = arg_hash[:parent]
      state       = arg_hash[:state]
      transparent = arg_hash[:transparent]
      antialias   = arg_hash[:antialias]
      physics     = arg_hash[:physics]

      if state
        state.game = self
      else
        state = State.new(self)
      end

      if block_given?
        state.instance_eval(&block)
      end

      @native = %x{
        new Phaser.Game(width, height, renderer, parent, #{state.to_n}, transparent,
                        antialias, physics)
      }
    end

    alias_native :cache, :cache, as: Cache
    alias_native :add,   :add,   as: GameObjectFactory

    alias_native :load
    alias_native :world, :world, as: World
    alias_native :stage
    alias_native :physics, :physics, as: Physics
    alias_native :debug
    alias_native :input, :input, as: Input
    alias_native :width
    alias_native :time
  end
end
