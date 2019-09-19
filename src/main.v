module main

import os

fn main() {

    // pass all the arguments to the function, which parses them
    parse_arguments(os.args)

    // get the path of the file we want to create
    path := get_file_path(os.args[1])

    if os.file_exists(path) {
        println('the file $path does already exist.')
        exit(1)
    }

    file := os.create(path) or {
        /**
         * todo: improve error reporting
         *  - at the moment, we do not get any information about why
         *    os.create(path string) ?File failed, creating the file
         *    => wait (create issue on v itself ?) until we get better error messages  
         */
        error('unable to create file')
        exit(1)
    }

    file.flush()
    println('created file $path!')
}

/**
 * return the path to a file with the given name in the current directory
 *
 * @param filename string
 * @return string
 */
fn get_file_path(filename string) string {
    path := os.getwd()
    return '$path/$filename'
}

/**
 * parse the given arguments to the tool
 *
 * @param args []string
 */
fn parse_arguments(args []string) {
    if args.len != 2 {
        error_invalidargument()
    }
}

fn error_invalidargument() {
    println('Wrong Usage : invalid amount of arguments')
    println('Usage: ')
    println('create <file>')
    exit(1)
}