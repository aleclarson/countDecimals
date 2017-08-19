
countDecimals = require ".."

describe "countDecimals()", ->

  it "counts how many decimals are in a number", ->
    expect(countDecimals 0).toBe 0
    expect(countDecimals 1).toBe 0
    expect(countDecimals 1.1).toBe 1
    expect(countDecimals 1.11).toBe 2
    expect(countDecimals 1/3).toBe 16

  it "does not support scientific notation", ->
    expect(countDecimals 1.1e-7).toBe 4

