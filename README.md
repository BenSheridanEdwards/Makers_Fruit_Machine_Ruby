### [Makers Academy](http://www.makersacademy.com) - Week 10 Solo Tech Test Practice
Fruit Machine
-

[Test Outline](#Outline) | [Specification](#Specification) | [User Stories](#Story) | [Modelling](#Modelling) | [Installation Instructions](#Installation) | [IRB Testing](#IRB_Testing) | [Classes & Methods](#Methods) |


## <a name="Outline">Test Outline</a>

### The Game

We are going to create a virtual fruit machine. To make things easier instead of symbols we are going to use colours: black, white, green, yellow.

Each time a player plays our fruit machine we display four 'slots' each with a randomly selected colour in each slot.

If the colours in each slot are the same then the player wins the jackpot which is all of the money that is currently in the machine.

Implement a basic machine, along with the concept of a player who has a fixed amount of money to play the machine.

### Floats and prizes

Next we are now going to add a "float" to our fruit machine, this is an initial sum of money that the machine has. In addition we are going to implement a prize system.

If each slot has a different colour then the machine should pay out half the current money in the machine.

If a given play results in two or more adjacent slots containing the same colour then the machine should pay out a prize of 5 times the cost of a single play.

If the machine does not have enought money to pay a prize it should credit the player with a number of free plays equal to the difference between the full prize and the amount of money available. This does not affect a jackpot win.

## <a name="Specification">Specification</a>

### Requirements

* Each round of the game will feature a display of four 'slots' each with a randomly selected colour, black, white, green, or yellow.
* The machine will have a float, an initial amount of money in the machine, that will be awarded along with any received money to a winning player.
* If the colours in the four slots are the same, then the player wins the jackpot, with all the money in the machine being awarded to the player.
* If all the colours across the four slots are different, the machine will pay out half of all the money in the machine to the player.
* If a play results in two or more adjacent slots containing the same colour, then the machine pays out 5 times the cost of a single play.
* If the machine does not have enough money for the prize, it should credit the player with a number of free plays equal to the difference between the full prize and the amount of money available. (This doesn't affect the jackpot prize)

## <a name="Story">User Stories</a>

```
As a fruit machine owner, so I can entice people to play my virtual fruit machine,
I'd like to add a float to each machine.

As a player, so I can play a game on the virtual fruit machine, 
I'd like to insert a fixed amount of money for a single play.

As a player, in a game of virtual fruit machine,
I'd like to see 4 'slots' of random colours, potentially being black, white, green, or yellow.

As a player, in a play of virtual fruit machine, 
When the colours in each adjacent slot are the same,
I'd expect to win the jackpot, and receive all the money currently inside the machine.

As a player, in a play of virtual fruit machine, 
When the colours in each every slot are different,
I'd expect to win a prize, and receive half the current money in the machine.

As a player, in a play of virtual fruit machine, 
When the colours in two or more adjacent slots are the same,
I'd expect to win a prize, and receive 5 times the cost of a single play.
```

## <a name="Modelling">Modelling</a>


## <a name="Installation">Installation Instructions</a>

Clone the repository from github then change directory into it.
```
$ git clone https://github.com/BenSheridanEdwards/Makers_Fruit_Machine_Ruby.git
$ cd Makers_Fruit_Machine_Ruby
```

Load dependencies with bundle.
```
$ gem install bundle
$ bundle
```

Run Rspec for tests and coverage, then rubocop for linting
```
$ rspec
$ rubocop
```

Load the app in IRB, require X files, create an instance of X class, then use the class [methods](#Methods) below.

## <a name="IRB_Testing">IRB Testing</a>


## <a name="Methods">Classes & Methods</a>

### Class

| Methods | Description |
| --- | --- |
| | | 
