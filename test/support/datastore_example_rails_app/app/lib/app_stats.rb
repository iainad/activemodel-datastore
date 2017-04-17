# frozen_string_literal: true

module AppStats
  def self.memory_usage
    (`ps -o rss= -p #{Process.pid}`.to_i * 1024).to_f / 2**20
  end
end
