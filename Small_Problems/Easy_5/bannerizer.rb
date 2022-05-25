#  Bannerizer
#  Write a method that will take a short line of text, and print it within a box.


def print_in_box(string) 
 p outer_box = "+#{"-" * (string.size + 2)}+" 
 p inner_box = "|#{" " * (string.size + 2)}|" 
 p center = "|#{" " + string + " "}|" 
 p inner_box
 p outer_box
end


# Example:
print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+