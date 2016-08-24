module CollectionStatistics
  def count_by(&block)
    each_with_object(Hash.new(0)) do |element, memo|
      memo[yield(element)] += 1
    end
  end
end