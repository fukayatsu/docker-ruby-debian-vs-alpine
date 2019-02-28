require 'benchmark/ips'

def test
  hash = {}
  10_000.times do |i|
    hash = { i => hash }
  end
end

Benchmark.ips do |x|
  x.report('test') { test }
  x.compare!
end
