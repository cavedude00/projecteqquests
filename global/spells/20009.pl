sub EVENT_SPELL_EFFECT_CLIENT {
    my $tclass = 9; #Rogue
    my $mclass = $client->GetClass();
    if ($mclass==$tclass) {
        $client->Message(13, "Ability Failed. You are already a ". quest::getclassname($tclass));
    } else {        
        $client->BuffFadeAll();
        $client->RemovePet();
        quest::permaclass($tclass);
    }
}