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
        value = @raw.get key
        @raw.del key
        value
      end
    end

    ##
    # Retrieve a key

    def [](key)
      @raw.get key
    end

    ##
    # Set a key

    def []=(key, value)
      @raw.set key
    end

    ##
    # Return the size of the store

    def size
      @raw.dbsize
    end

    ##
    # Check for a key in the store

    def include?(key)
      @raw.exists key
    end

    ##
    # Array of keys in the store

    def keys
      @raw.keys
    end
  end
end
