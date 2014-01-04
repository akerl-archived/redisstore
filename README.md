redisstore
=========

[![Gem Version](https://badge.fury.io/rb/redisstore.png)](http://badge.fury.io/rb/redisstore)
[![Dependency Status](https://gemnasium.com/akerl/redisstore.png)](https://gemnasium.com/akerl/redisstore)
[![Code Climate](https://codeclimate.com/github/akerl/redisstore.png)](https://codeclimate.com/github/akerl/redisstore)
[![Coverage Status](https://coveralls.io/repos/akerl/redisstore/badge.png?branch=master)](https://coveralls.io/r/akerl/redisstore?branch=master)
[![Build Status](https://travis-ci.org/akerl/redisstore.png?branch=master)](https://travis-ci.org/akerl/redisstore)

Redis storage backend for [BasicCache](https://github.com/akerl/basiccache)

## Usage

```
require 'basiccache'
require 'redisstore'

store = RedisStore.new(host: '1.2.3.4', port: 1234)
cache = BasicCache.new store
```

Your options when creating the store are passed off to [redis-rb](https://github.com/redis/redis-rb), so you can provide whichever other options you'd like, such as specifying a unix socket or authentication details. Similarly, if your Redis instance is on localhost:6379, you don't need to specify anything.

## Installation

    gem install redisstore

## License

redisstore is released under the MIT License. See the bundled LICENSE file for details.

