redisstore
=========

[![Gem Version](https://img.shields.io/gem/v/redisstore.svg)](https://rubygems.org/gems/redisstore)
[![Dependency Status](https://img.shields.io/gemnasium/akerl/redisstore.svg)](https://gemnasium.com/akerl/redisstore)
[![Code Climate](https://img.shields.io/codeclimate/github/akerl/redisstore.svg)](https://codeclimate.com/github/akerl/redisstore)
[![Coverage Status](https://img.shields.io/coveralls/akerl/redisstore.svg)](https://coveralls.io/r/akerl/redisstore)
[![Build Status](https://img.shields.io/travis/akerl/redisstore.svg)](https://travis-ci.org/akerl/redisstore)
[![MIT Licensed](https://img.shields.io/badge/license-MIT-green.svg)](https://tldrlegal.com/license/mit-license)

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

