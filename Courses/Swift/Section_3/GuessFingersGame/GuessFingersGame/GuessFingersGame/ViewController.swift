import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guessFingersNumber: UITextField! // guessFingersTextField or just guessTextField should be more intuitive
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func guessButtonPressed(_ sender: UIButton) {
        
        let fingersNumberAwnser = Int(arc4random_uniform(6))
        
        guard let guessText = guessFingersNumber.text, let guessNumber = Int(guessText) else {
            showErrorMessage()
            return
        }
        
        if didUserWin(with: guessNumber, awnser: fingersNumberAwnser) {
            showVictoryMessage()
        } else {
            showLoserMessage(rightAwnser: fingersNumberAwnser)
        }
    }
    
    private func didUserWin(with guess: Int, awnser: Int) -> Bool {
        return guess == awnser
    }
    
    private func showVictoryMessage() {
        resultLabel.textColor = UIColor.green
        resultLabel.text = "You're right. You won."
    }
    
    private func showLoserMessage(rightAwnser: Int) {
        resultLabel.textColor = UIColor.red
        resultLabel.text = "Wrong! It was \(rightAwnser). You lose."
    }
    
    private func showErrorMessage() {
        resultLabel.textColor = UIColor.red
        resultLabel.text = "Please, enter a number from 0 to 5."
    }
}

// 1 - didLoad or others funcs without any implementation, u should delete it
// 2 - its nice to keep view's life cycle funcs on top of the file (viewDidLoad, etc).. it's a pattern.
// 3 - input "aaa" on previous implementation to make the app crash. Avoid using "!" and make more error handling
// 4 - one func one thing... make your code more legible (split your funcs logic into more funcs) =p
