require 'benchmark'

require './app/simple'

Benchmark.bm 10 do |r|
  r.report 'simple' do
    simple_execute
  end
end
