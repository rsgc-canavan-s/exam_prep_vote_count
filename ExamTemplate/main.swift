import Foundation

/*
 
 ORGANIZING YOUR SOLUTION
 
 A good way to orgaize your code is to separate your code into the three sections - input, process, output – as much as possible.
 
 The start of a solution is implemented below. Consider all the possible inputs. Can you finish the solution?
 
 */

/*
 
 INPUT
 
 Be sure that your implementation of this section discards all the possible bad inputs the user could provide.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */
var inputToProcess : Int = 0
var amountOfVotes : Int = 0

// Loop until valid input is received
while amountOfVotes == 0 {
    
    // Show the prompt
    print("How many votes? ", terminator: "")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
        
        // You probably need to add additional checks to be sure the
        // input received is valid
        // Add checks as needed...
        
        if let inputAsInteger = Int(notNilInput) {
            if inputAsInteger >= 1 && inputAsInteger <= 15 {
                amountOfVotes = inputAsInteger
            }
        }
    }
    
    // Save the input given, as we are certain it's what we are looking for now
    inputToProcess = amountOfVotes
    
}

var votes : String = ""
var voteNumbers : Character
var voteNum : Int = 0
var votesArray : [Character] = []

while votes == "" {
    
    // Show the prompt
    print("", terminator: "")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
        
        // You probably need to add additional checks to be sure the
        // input received is valid
        // Add checks as needed...
        
        if let inputAsString = String(notNilInput) {
            for character in inputAsString.characters {
                //print(character, terminator:"")
                votesArray.append(character)
            }
            voteNum = votesArray.count
            if voteNum == amountOfVotes {
            votes = inputAsString
                break
            } else {
                print("Error")
                break
            }
        }
    }
    
    // Save the input given, as we are certain it's what we are looking for now
    inputToProcess = amountOfVotes
    print(votesArray)
}
/*
 
 PROCESS
 
 Here is where you implement the logic that solves the problem at hand.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Add 'process' code below....
var amountOfAVotes : Int = 0
var amountOfBVotes : Int = 0
var thisLetter : String
for whatLetter in 0...amountOfVotes-1 {
    thisLetter = String(votesArray[whatLetter])
    if thisLetter == "A" {
        amountOfAVotes+=1
    } else if thisLetter == "B" {
        amountOfBVotes+=1
    }
    thisLetter = ""
}


/*
 
 OUTPUT
 
 Here is where you report the results of the 'process' section above.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Add 'output' code below... replace what is here as needed.
if amountOfAVotes > amountOfBVotes {
    print("A")
} else if amountOfBVotes > amountOfAVotes {
    print("B")
} else if amountOfAVotes == amountOfBVotes {
    print("Tie")
}

