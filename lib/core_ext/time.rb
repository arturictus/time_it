class Time
  ToHKeys = %i{sec min hour day month year wday yday isdst zone}.freeze
  def at(args = {})
    norm = to_h.merge(args)
    utc_offset = args[:utc_offset] || strftime('%:z')
    ary = [
      norm[:year], norm[:month], norm[:day],
      norm[:hour], norm[:min], norm[:sec],
      utc_offset
    ]
    self.class.new(*ary)
  end

  def to_h
    Hash[ToHKeys.zip self.to_a]
  end
end
