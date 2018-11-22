// make reservation

import UIKit
import FirebaseFirestore


class MakeReservationViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var dayTextField: UITextField!
    @IBOutlet weak var seatsTextField: UITextField!
    
    //@IBOutlet weak var lblResult: UILabel!
    // Mark: Firestore variables
    var db:Firestore!
    var bc = ""
    
    // MARK: Default Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        bc = UserDefaults.standard.string(forKey: "userId")!
        print(bc)
        db = Firestore.firestore()
        
        let settings = db.settings
        settings.areTimestampsInSnapshotsEnabled = true
        db.settings = settings
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: Actions
    @IBAction func buttonPressed(_ sender: Any) {
        print("pressed the button")
        
        let res = db.collection("reservations")
        
        
    
        
        res.document(bc + nameTextField.text! + dayTextField.text!).setData([
            "username": bc,
            "restaurant": nameTextField.text!,
            "day" : dayTextField.text!,
            "numSeats": seatsTextField.text!
                        ])
        
       // lblResult.text = "Reservation Successfull.  Go back and see the reservations menu"
        
        
    }
    
    
    
    
    /*
     // MARK: - Navigation
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
