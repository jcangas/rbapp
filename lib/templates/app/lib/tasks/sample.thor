class Sample < Thor
  desc "echo TEXT", "a sample task"
  method_options :upcase => :boolean, :sufix => :string
  def echo(text)
  	out_text = text.dup
  	out_text.upcase! if options.upcase?
  	out_text += options.sufix if options.sufix?
    say out_text
  end
end
