redisstore
=========

[![Gem Version](https://img.shields.io/gem/v/redisstore.svg)](https://rubygems.org/gems/redisstore)
[![Dependency Status](https://img.shields.io/gemnasium/akerl/redisstore.svg)](https://gemnasium.com/akerl/redisstore)
[![Build Status](https://img.shields.io/circleci/project/akerl/redisstore/master.svg)](https://circleci.com/gh/akerl/redisstore)
[![Coverage Status](https://img.shields.io/codecov/c/github/akerl/redisstore.svg)](https://codecov.io/github/akerl/redisstore)
[![Code Quality](https://img.shields.io/codacy/fb61940c13c142ef80580b0f2d6c9e37.svg)](https://www.codacy.com/app/akerl/redisstore)
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

