# Delegate Protocol Example
This is a protocol/delegate example in Swift for learning purposes.
Inspiration for this project comes from Sean Allen: https://youtu.be/DBWu6TnhLeY

In this example, the user clicks on Start to select a "Paw shape" if the paw shape resembles a cat the parent VC will display a cat, and selecting a dog paw will display a Dog.
There are 2 VCs in this example: BossVC and InterVC.

### BossViewController
The Boss VC is the paw selection screen, which contains the protocol:
``` protocol PawSelectionDelegate {
    func didSelectPaw(image: UIImage, color: UIColor)
}
```
The BossVC also has the instruction to send to the InterVC depending on which paw is selected to display the appropriate image and background colour:
```            
selectionDelegate.didSelectPaw(image: UIImage(named: "catImage")!, color: .brown)
```

### InterViewController

The InternVC assigns itself as the intern with this line:
```
pawSelection.selectionDelegate = self
```
The internVC does not need to know about the details of what is to be displayed since the BossVC will instruct the InternVC. The InterVC must conform to the protocol in the BossVC as it will inherit from this VC. extension InternViewController: PawSelectionDelegate The InterVC must have the method in the protocol and depending on the parameters passed from the Boss to the Intern, the InterVC will display the appropriate image & colour.
```
    func didSelectPaw(image: UIImage, color: UIColor) {
        updateImage.image = image
        view.backgroundColor = color
        
 ```

![ezgif com-video-to-gif](https://user-images.githubusercontent.com/26723281/220983121-013dda6f-9029-4e77-8013-6107363f9d5a.gif)
