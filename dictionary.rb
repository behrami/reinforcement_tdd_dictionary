class Dictionary

  def initialize
    @data = {}
  end

  def entries
    @data
  end

  def add(wordHash)
    if wordHash.class == Hash
      keywords = wordHash.keys
      keyword = keywords[0]
      definition = wordHash[keyword]
      testHash = {keyword => definition}
      @data = testHash.merge(@data)
    else
      testHash = {wordHash => nil}
      @data = testHash.merge(@data)
    end
  end

  def keywords
      return @data.keys
  end

  def include?(keyword)
    keywords.each do |key|
      if key == keyword
        return true
      end
    end
    return false
  end

  def find(findParams)
    finalFind = {}
    keywords.each do |key|
      if findParams == key[0..(findParams.length-1)]
        # finalFind = {key => @data[key]}
        finalFind[key] = @data[key]
      end
    end
    return finalFind
  end

end
