var piece = argument0;
with(select_ring_obj){
    instance_destroy();
}
instance_create(piece.x,piece.y,select_ring_obj);
