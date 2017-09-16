require 'redis'
require 'set'

##
# Redis-backed Store designed for BasicCache
module RedisStore
  class << self
    ##
    # Insert a helper .new() method for creating a new Store object

    def new(*args)
      self::Store.new(*args)
    end
  end

  ##
  # Redis-backed store object
  class Store
    attr_reader :data

    ##
    # Generate an empty store

    def initialize(params = {})
      @data = Redis.new(params)
    end

    ##
    # Clears a specified key or the whole store

    def clear!(key = nil)
      if key.nil?
        @data.flushdb && {}
      else
        key = prep(key)
        value = @data.get key
        @data.del key
        parse value
      end
    end

    ##
    # Retrieve a key

    def [](key)
      parse @data.get(prep(key))
    end

    ##
    # Set a key

    def []=(key, value)
      @data.set prep(key), prep(value)
    end

    ##
    # Return the size of the store

    def size
      @data.dbsize
    end

    ##
    # Check for a key in the store

    def include?(key)
      @data.exists prep(key)
    end

    ##
    # Array of keys in the store

    def keys
      @data.keys.map { |x| parse x }
    end

    private

    def prep(object)
      Marshal.dump object
    end

    def parse(object)
      # rubocop:disable Security/MarshalLoad
      object.nil? ? nil : Marshal.load(object)
      # rubocop:enable Security/MarshalLoad
    end
  end
end
