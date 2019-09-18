module main

import os

fn main() {

    // check if we are supplied with the right amount
    // of aguments
    // todo: improve error-reporting    
    if os.args.len != 2 {
        error('wrong usage!')
        return
    }

}