sub EVENT_SPAWN {
  $counter=0;
  quest::spawn_condition($zonesn,1,0);
  quest::settimer(1,120);

}

sub EVENT_TIMER {
   quest::spawn_condition($zonesn,1,1);

}

sub EVENT_SIGNAL {
  if($signal == 1) { 
         $counter += 1;
}
  if($counter == 8 ) {			
quest::spawn2(206077,0,0,-266,-879,3,2);
quest::spawn2(206078,0,0,-314,-880,3,255);
quest::spawn2(206079,0,0,-406,-783,3,65);
quest::spawn2(206077,0,0,-405,-735,3,63);
quest::spawn2(206078,0,0,-312,-644,3,125);
quest::spawn2(206077,0,0,-263,-642,3,127);
quest::spawn2(206079,0,0,-171,-734,3,188);
quest::spawn2(206078,0,0,-172,-785,3,193);
}
  if($counter == 16 ) {			
quest::spawn2(206078,0,0,-266,-879,3,2);
quest::spawn2(206077,0,0,-314,-880,3,255);
quest::spawn2(206078,0,0,-406,-783,3,65);
quest::spawn2(206079,0,0,-405,-735,3,63);
quest::spawn2(206077,0,0,-312,-644,3,125);
quest::spawn2(206078,0,0,-263,-642,3,127);
quest::spawn2(206079,0,0,-171,-734,3,188);
quest::spawn2(206077,0,0,-172,-785,3,193);
}
 if($counter == 24 ) {			
quest::spawn2(206077,0,0,-266,-879,3,2);
quest::spawn2(206077,0,0,-314,-880,3,255);
quest::spawn2(206079,0,0,-406,-783,3,65);
quest::spawn2(206079,0,0,-405,-735,3,63);
quest::spawn2(206078,0,0,-312,-644,3,125);
quest::spawn2(206078,0,0,-263,-642,3,127);
quest::spawn2(206077,0,0,-171,-734,3,188);
quest::spawn2(206078,0,0,-172,-785,3,193);
}
 if($counter == 32 ) {			
quest::spawn2(206078,0,0,-266,-879,3,2);
quest::spawn2(206079,0,0,-314,-880,3,255);
quest::spawn2(206079,0,0,-406,-783,3,65);
quest::spawn2(206078,0,0,-405,-735,3,63);
quest::spawn2(206077,0,0,-312,-644,3,125);
quest::spawn2(206078,0,0,-263,-642,3,127);
quest::spawn2(206078,0,0,-171,-734,3,188);
quest::spawn2(206079,0,0,-172,-785,3,193);
}
 if($counter == 40 ) {			
   quest::spawn_condition($zonesn,1,0);
   quest::spawn_condition($zonesn,2,1);
}
 if($counter == 48 ) {			
    quest::spawn2(206080,0,0,-289,-760,2,250);
}
 if($counter == 56 ) {			
quest::spawn2(206078,0,0,-266,-879,3,2);
quest::spawn2(206077,0,0,-314,-880,3,255);
quest::spawn2(206078,0,0,-406,-783,3,65);
quest::spawn2(206079,0,0,-405,-735,3,63);
quest::spawn2(206078,0,0,-312,-644,3,125);
quest::spawn2(206079,0,0,-263,-642,3,127);
quest::spawn2(206078,0,0,-171,-734,3,188);
quest::spawn2(206078,0,0,-172,-785,3,193);
}
if($counter == 64 ) {			
quest::spawn2(206078,0,0,-266,-879,3,2);
quest::spawn2(206079,0,0,-314,-880,3,255);
quest::spawn2(206078,0,0,-406,-783,3,65);
quest::spawn2(206077,0,0,-405,-735,3,63);
quest::spawn2(206077,0,0,-312,-644,3,125);
quest::spawn2(206078,0,0,-263,-642,3,127);
quest::spawn2(206077,0,0,-171,-734,3,188);
quest::spawn2(206077,0,0,-172,-785,3,193);
}
if($counter == 72 ) {
   quest::spawn_condition($zonesn,1,0);			
   quest::spawn_condition($zonesn,2,1);
}
if($counter == 80 ) {			
  quest::signalwith(206080,1,1);
}
}