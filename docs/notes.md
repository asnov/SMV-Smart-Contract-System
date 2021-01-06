
I don't want this solution to be frozen for the ages, dead and forgotten, 
but I want it to be a reason to start or continue a discussion.  
  
### Features  
  
  
  
#### Voting with depool stake  
  
To vote with a DePool stake, we need to make sure 
that the stake is still in the DePool during whole of the voting time.
Does it mean we should allow to vote only by locked stakes?
  
Before accepting a vote for locked stakes we should verify:
- that it is locked stake;
- and the locked period covers the end of voting period.  

From the other side it is possible that DePool could be terminated and 
  stakes will be returned to owners. 
  This will allow to use the same stake to vote second time.
To avoid this, we should verify the locked stake is still in place 
  in the moment of the voting end.
Could we verify the same for ordinary stakes so they will be able to vote too???
  It is a good question to answer. TODO: answer  
  
#### Voting by Free TON crystals  

To avoid re-voting with the same crystals, they must be accepted to the wallet of the vote collector.
To allow users to vote on several contests / proposals with the same crystal, 
we need to create an essence of the _vote collector_.  
  
  
  
  
  