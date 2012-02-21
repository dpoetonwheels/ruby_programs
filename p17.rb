# Regexp < Object, MatchData < Object

x = Regexp.new("abc")             # pattern
p x =~ "xxxabcyy"                 # index of first match
y = /[a-c]/                       # a, b, or c
p y =~ "xxcyyazzb"
p $&                              # the match
p $`                              # before the match
p $'                              # after the match
z = %r{c.*a}                      # %r{}, . any, * 0 or more
p z =~ "xxcyyazzb"
p $~[0]                           # $~ MatchData object
p $~.pre_match, $~.post_match
p /(c)(.*)(a)/ =~ "xxcyyazzb"     # () create fields
p $&, $1, $2, $3                  # match, each paren
p $~[0...$~.length]               # MatchData elements
p /^c.*a/ =~ "xxcyyazzb"          # ^ start of string
p /c.*a$/ =~ "xxcyyazzb"          # $ end of string
p /C.*A/i =~ "xxcyyazzb"          # i case insensitive
p /\d+/ =~ "ggg123hhh456", $&     # + one or more, \d digit
p /\D+/ =~ "ggg123hhh456", $&     # \D not digit
p /\w?\d+\w?/ =~
              "ggg123hhh456",$&   # \w letter, digit or _
p /g{3}.*h{3}/ =~                 # {3} repeat three times
             "ggg123hhh456", $&
p /\s\S+\s/ =~ "a big car", $&    # \s white, \S not white
p /[ab|\W]g/ =~                   # | or,
           "abe gab3 ab#@c", $&
p /[aeiou]{2,4}/ =~ "soup", $&    # repeat 2 to 4 times
p "soup".sub(/[aeiou]{2,4}/,
                         "lur")   # sub replaces once
p "soup".gsub(/[aeiou]/,"e")      # gsub replaces multiple
p "Gittleman, Art".
    sub(/(\w+), (\w+)/, '\2 \1')  # \2=$2 \1=$1
 p "Devang".reverse!