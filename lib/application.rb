require 'awesome_print'
require 'action_view'

class TextEditor

  include ActionView::Helpers::TextHelper

  def initialize(file)

    @file = File.read(file)


  end

  def text_split(number)

  new_text = word_wrap(@file, line_width: number)
  File.write('../bin/output.txt', new_text)

  end


end


awesome_sauce = TextEditor.new("../data/awesome-sauce.txt")
i_knew_them = TextEditor.new("../data/I knew them before they were popular.txt")
what = TextEditor.new("../data/what!?.txt")


# puts awesome_sauce.text_split(20)
#
# puts i_knew_them.text_split(15)

what.text_split(50)





