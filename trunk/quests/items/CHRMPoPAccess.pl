sub EVENT_CLICKDOOR
{
	my $d_id = ($doorid % 256);
	if($d_id == 4)
	{
		if($client->GetLevel() >= $level_for_tier_three || (defined $qglobals{pop_poj_mavuin} && defined $qglobals{pop_poj_tribunal} && defined $qglobals{pop_poj_valor_storms} && defined $qglobals{pop_pos_askr_the_lost} && $qglobals{pop_pos_askr_the_lost} == 3 && defined $qglobals{pop_pos_askr_the_lost_final}))
		{
			if(quest::has_zone_flag(209) != 1)
			{
				quest::set_zone_flag(209);
				$client->Message(15, "You have received a character flag!");
			}
		}
	}
}