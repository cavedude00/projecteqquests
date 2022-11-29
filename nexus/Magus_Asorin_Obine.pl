

sub EVENT_SAY {
  my $charKey = $client->CharacterID() . "-MAO-Progress";
  my $progress = quest::get_data($charKey);
  if ($text=~/hail/i) {
    if ($progress <= 0) {
      plugin::NPCTell("Hail, ". $client->GetCleanName() .". Welcome to the Nexus of the Spires, where your journey begins");
    }
  } elsif ($text=~/Nexus of the Spires/i) {
    plugin::NPCTell("This complex serves as both a target and a projector for a vast teleportation network spanning Norrath and beyond. ".
                    "Many adventurers find their way here, looking to [". quest::saylink("expedite their travels",1) ."].");
  } elsif ($text=~/expedite their travels/i) {
  }
}

sub POPUP_DISPLAY {
    my $Center = plugin::PWAutoCenter(22, 2);
    my $Break = plugin::PWBreak();
    
    quest::popup('', "$Center Welcome to Pyrelight!                      
                      <br>$Break<br>
                      <c \"#FF0000\">The Rules:</c>
                      <br>
                      1. Don't be a dick. (Don't be unnecessarily rude or vulgar in global channels. Don't go out of your way to make other players have a bad time.)<br>
                      2. MQ2 is not allowed. The server files include several MQ2 features, with potentially more to come.<br>
                      <br>$Break<br>
                      Pyrelight is a solo-balanced progression server, meant to offer a challenging experience for adventurers willing to develop both their character and their personal skills.
                      <br>
                      Progression does not exactly map to original expansion releases, but focuses more on level and overall difficulty. Currently, progression through ROUGHLY <c \"#00FFFF\">Scars of Velious</c> is available, though several Luclin zones are available and Veeshan's Peak and the Classic planes are not. This is <c \"#00FFFF\">Tier 1</c>, and levels are capped at <c \"#00FFFF\">60</c>. Additional progression tiers will be added in the future.
                      <br>$Break<br>              
                      <c \"#DFA801\">This server uses several custom mechanics:</c><br>
                      <br>
                      1. 
                      ");
}
