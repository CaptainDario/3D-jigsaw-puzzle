
puzzle_path = "jigsaw.svg";
heigt = 10;


module main(){
    linear_extrude(heigt){
        import (file = puzzle_path, center = true, dpi = 300);
    }
}

main();