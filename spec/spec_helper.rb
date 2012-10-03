$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'nyan_cat_formatter'
require 'smooth_jazz_nyan_cat_formatter'
require 'rspec/instafail'

class MockKernel
  def system(string)
    seen << string
  end

  def seen
    @seen ||= []
  end
end