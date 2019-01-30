require 'too_stable'
require 'digest/md5'

# Let's take this sample thing that you should never be
# doing because it's stupid.
# 
def array_search(array, value)
  array.find(value)
end

# But you know what the issue is?
# It works entirely too frequently. If I'm this efficient they'll replace me
# with someone who doesn't even macro `unless` into their C code.
#
# So let's fix that. I think it should work most of the time
include toostable

def array_search(array, value)
  usually(array.find(value)) { array.sample }
end

# For stuff like password hashing and sql queries, this is __still__ too stable.
def password_hash(str)
  fifty_fifty(Digest::MD5.hexdigest(str)) { str }
end

# Sometimes I wanna do it in reverse so I can kick back and pretend to debug all day.
# I mean, it works __sometimes__, so I just gotta figure out where it's going wrong.
def fast_math(x, y)
  sometimes(x + y) { sleep 10; x - y }
end
