# SMV-Smart-Contract-System
This is a repo to take part in the [Free TON Contest: DGO SMV Smart Contract System](https://forum.freeton.org/t/contest-proposal-dgo-smv-smart-contract-system/5481/19)

## Team wanted  
This is a big project but timeframe is very limited. So I am looking for other developers and Free TON specialists to join me in this project and share reward with me.  

### Who is required  
- Solidity developers with Free TON specialisation - 50% of reward;  
- Front-end developer (TypeScript & Angular) - 20% of reward;  
- Technical writer and workflow diagram creater - 10%;  
- Manager - 10%;  
- Tester - 10%;  
  
### Tools (and basic requirements for participants)  
- yarn, node.js  
- typescript, no JS! (but as soon as all JS is TS by definition so it should not be a big issue)  
- unit-testing is must. So I'm trying [echpochmak](https://github.com/wintexpro/echpochmak) at least for integration- and e2e-testing. I'm still not sure whether it is suitable for unit-testing.  
- git, github, PRs, code review, gitflow branching model  
- tondev, tonos-cli, TON SDK, TON Solidity Compiler, TVM Linker, ton client ts  
  
Please, PM me @anovi if you want to participate.  
  
  
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
