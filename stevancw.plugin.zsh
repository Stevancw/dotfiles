#      _
#  ___| |_ _____   ____ _ _ __   _____      __
# / __| __/ _ \ \ / / _` | '_ \ / __\ \ /\ / /
# \__ \ ||  __/\ V / (_| | | | | (__ \ V  V / 
# |___/\__\___| \_/ \__,_|_| |_|\___| \_/\_/  
#
# Stevan C Wing December 2013
#---------------------------------------------


p() { cd ~/Transporter/Dropbox/Neurology/PhD/$1; }
_p() { _files -W ~/Transporter/Dropbox/Neurology/PhD -/; }
compdef _p p

b() { cd ~/Transporter/Dropbox/Neurology/PhD/lib/_lab_book$1; }
_b() { _files -W ~/Transporter/Dropbox/Neurology/PhD/lib/_lab_book -/; }
compdef _b b

s() { cd ~/Transporter/Programming/Sites$1; }
_s() { _files -W ~/Transporter/Programming/Sites -/; }
compdef _s s



alias ..='cd ..'
alias wenum='ruby Transporter/Dropbox/Week_number.rb' 
# alias s='cd Transporter/Programming/Sites/'
# Shortcuts to projects
# hinfo1=/Users/stevancw/sites/hinfo/
