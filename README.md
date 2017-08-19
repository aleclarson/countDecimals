
# countDecimals v1.0.0 

The fastest way to count decimals of a number.

```coffee
countDecimals = require "countDecimals"

countDecimals(0)    # => 0
countDecimals(1)    # => 0
countDecimals(1.1)  # => 1
countDecimals(1.11) # => 2
countDecimals(1/3)  # => 16

# Scientific notation is not supported.
countDecimals(1.1e-7) # => 4
```

### Benchmark

The implementation uses `String#indexOf` instead of `String#split`.

Tested with NodeJS v8.3.0:
- `split` 2.5 million ops/sec
- `indexOf` 14 million ops/sec

That's with a modulo check (~7x faster for whole numbers).

