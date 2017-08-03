require 'benchmark'
file = 'insertion-sort.rb'
Benchmark.bm (7) do |x|
  x.report ("time") {system("./"+file, "argX")}
end
