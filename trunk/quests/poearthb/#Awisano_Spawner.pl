sub EVENT_SPAWN {
   $check = 0;
   quest::settimer("depop",1);
}

sub EVENT_TIMER {
    $check = 0;
    if($timer eq "depop" && $qglobals{poeb_warlord} == 1) {
    quest::stoptimer("depop");
    quest::depop();
    }
    if($timer eq "depop" && $qglobals{poeb_warlord} != 1) {
    quest::stoptimer("depop");
    quest::settimer("awisano",1);
    }
    if($timer eq "awisano") {
    $check_boss = $entity_list->GetMobByNpcTypeID(222002);#myrmadon_of_stone
    if ($check_boss) {
      $check = 1
    }
    if($check == 0) {
	quest::spawn2(222016,0,0,$x,$y,$z,$h); 
        quest::stoptimer("awisano");
        quest::depop();
	}
    if ($check == 1) {
      
      }
    }    
}