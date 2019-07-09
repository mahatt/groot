#This  recipe is okay for standalone breakpoints debug
#In case of complicated commands are required,
#set logging on 
#Use Logged commands as source

#Save breakpoints to a file
document brksave
It saves breakpointss to specified file on current path
Usage: brksave <filename>
end

define brksave
    if $argc != 1
        help brksave
    else
    save breakpoints $arg0
    end
end


#Loads breakpoints from a file
document brkload
Loads all breakpoints from the defined file in the PWD
Usage: brkload <filename>
end

define brkload
    if $argc != 1
        help brkload
    else
        source $arg0
    end
end

