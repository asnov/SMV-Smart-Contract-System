# SMV-Smart-Contract-System
This is a repo to take part in the **Free TON Contest: DGO SMV Smart Contract System**

### Specification

Requirements:
* auto-tests designed as a smart contract or a script to test scenarios.
* [Free Software license](https://www.gnu.org/licenses/license-list.html)
* deploy and test on the DevNet and Jury should be able to access it for testing.
* Solution should be scalable to thousands of participants

Required features:
* Vote
    * with TON Crystal tokens
    * with any TIP-3 Token
    * with DePool Stakes
* grant voting rights to 
    * a subset of users identified with another token
    * a subset of users identified with PubKeys
    * a subset of users identified by Group membership smart contract with user rights
* notify voting results
    * by emitting external
    * by emitting internal events
    * by callback message?
* generate “Voting Finished” events if voting is finished early with these votes.
* Should be able to deploy Proposal Smart Contract and Collect votes for it
* voting for Multiple Proposals
    * using same TON Crystal
    * using other TIP-3 Tokens
* SMV settings
    * Soft Majority
    * Super Majority
* Group membership smart contract with user rights
* support the ability to Add, Exclude New member, change rights of an existing member by Proposal result event ???
* Deploy a Contest from the Proposal if the Proposal is approved
* change parameters of the Contest
    * Voting period
    * Jury Groups
    * etc.
    * payment options
        * by Author
        * by Group
        * by a participant.
* Contest should include:
    * Start of the contest time;
    * End of the contest time;
    * Time for jury voting;
    * Set of jurors or Juror Groups pubkeys and addresses
* Storage Contract with
    *  a list of some SMV Proposals
    * Contests and their voting results
* DeBots for all system user interfaces: ...
* 
* 

Additional features:
* Tools for SMV state analysis
* Auth TIP-3 “as a plug” for SMV
* 
* propose changes to contest proposal;
* vote for proposal changes;
* users notification;

Contracts:
* Proposal Smart Contract
* Contest Smart Contract
* Example of Group membership smart contract to test and to define interface
    * add users? - PubKey or address ???
    * delete users;
    * check user exists;
    * add/delete admins - and other roles ???
* Storage Contract

System permissions:
* make proposal
* vote for proposal
* make submission
* vote for submission
