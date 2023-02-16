sub EVENT_SAY {
  POPUP_DISPLAY();
  my $charKey = $client->CharacterID() . "-MAO-Progress";
  my $progress = quest::get_data($charKey);
  if ($text=~/hail/i) {  
    
    my $acctMoneyFlagKey = $client->AccountID() . "-InitMoneyFlag";
    my $acctMoneyFlagValue = quest::get_data($acctMoneyFlagKey);
    if ($acctMoneyFlagValue <= 10) {
      plugin::NPCTell("Also, take these coins. You'll need them to get started, and you can pay me back sometime if your pride demands it.");
      quest::givecash(0, 0, 5, 1);
      quest::set_data($acctMoneyFlagKey, ++$acctMoneyFlagValue);
    }
    
    quest::set_data($charKey, "1");
    quest::message(15,"You have gained the ability to use the Nexus teleportation network.");
    quest::ding();
    quest::exp(1500);    
  }
}

sub POPUP_DISPLAY {
    my $Break = plugin::PWBreak();
    
    quest::popup('', "Welcome to Pyrelight. <br>
                      Discord: 5cFCA7TVgA <br>
                      <br>
                      Pyrelight is a solo-balanced server, meant to offer a challenging experience for verteran players and an alternative take on the 'solo progression' mold.
                     ");
}