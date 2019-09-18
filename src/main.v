module main

import os

fn main() {

    // check if we are supplied with the right amount
    // of aguments 
    if os.args.len != 2 {
        println('Wrong Usage : invalid amount of arguments')
        println('Usage: ')
        println('create <file>')
        return
    }

    // build the filepath 
    mut path := os.getwd()
    path += '/${os.args[1]}'

    file := os.create(path) or {
        // todo: improve error reporting
        error('unable to create file')
        return
    }

    file.flush()
    println('created file $path!')
}