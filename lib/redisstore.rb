require 'redis'
require 'json'

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
    attr_reader :raw

    ##
    # Generate an empty store

    def initialize(params = {})
      @raw = Redis.new(params)
    end

    ##
    # Clears a specified key or the whole store

    def clear!(key = nil)
      if key.nil?
        @raw.flushdb && {}
      else
        key = prep(key)
        value = @raw.get key
        @raw.del key
        parse value
      end
    end

    ##
    # Retrieve a key

    def [](key)
      parse @raw.get(prep key)
    end

    ##
    # Set a key

    def []=(key, value)
      @raw.set prep(key), prep(value)
    end

    ##
    # Return the size of the store

    def size
      @raw.dbsize
    end

    ##
    # Check for a key in the store

    def include?(key)
      @raw.exists prep(key)
    end

    ##
    # Array of keys in the store

    def keys
      @raw.keys.map { |x| parse x }
    end

    private

    def prep(object)
      Marshal.dump object
    end

    def parse(object)
      Marshal.load object
    end
  end
end
