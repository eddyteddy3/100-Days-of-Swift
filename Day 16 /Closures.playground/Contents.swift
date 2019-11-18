class Singer {
    func playSong() {
        print("Hello World!")
    }
}

func singSong() -> () -> Void {
    let singer = Singer()
    
    let sing = { [unowned singer] in
        singer.playSong()
        return
    }
    
    return sing
}

let singing = singSong()
singing.self
