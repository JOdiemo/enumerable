module MyEnumerable
  def all?
    return 'No block given' unless block_given?

    each do |element|
      return false unless yield(element)
    end
    true
  end

