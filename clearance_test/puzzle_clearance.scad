
puzzle_path = "/jigsaw_05.svg";
clearance_text = "0.5";

/* [Hidden] */
tile_size = 15;
height = 3;
text_height = 0.5;
text_size   = 4;
$fn = 100;


module main(){
    union(){
        linear_extrude(height){
            import (file = puzzle_path, center = true, dpi = 300);
        }
        translate([tile_size-text_size, tile_size-text_size, height-0.1]) {
            linear_extrude(text_height){
                text(text=clearance_text, size=text_size, halign="center", valign="center");
            }
        }
        translate([tile_size-text_size, tile_size - 2 * text_size, height-0.2]) {
            linear_extrude(text_height){
                text(text="mm", size=text_size/2, halign="center");
            }
        }
    }
}

main();