# DEFUNCT CODE?
#
# I think this is defunct code -- will investigate
#

# For trying things out
# Call the input file foo.in
# Then execute
#
#   $ ruby preprocess foo
#
# Currently output is directed to the
# console.  Uncomment the last line
# to direct output to foo.out

require 'asciidoctor/latex/tex_block'


base_name = ARGV[0]
input_file = base_name + ".in"
output_file = base_name + "out"

input = File.open(input_file, 'r') { |f| f.read }


output = Asciidoctor::LaTeX::TeXBlock.process_environments input


# File.open(output_file, 'w') {|f| f.write(output) }
