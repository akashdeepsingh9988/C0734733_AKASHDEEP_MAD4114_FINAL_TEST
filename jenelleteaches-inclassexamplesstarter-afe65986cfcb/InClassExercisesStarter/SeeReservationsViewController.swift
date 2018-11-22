import UIKit
import FirebaseFirestore

class SeeReservationsViewController: UIViewController {
    
    
    //MARK: Outlets

    
    
    @IBOutlet weak var textt: UILabel!
    // MARK: Firebase variables
    var db:Firestore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("You are on the see reservations screen")
        
        db = Firestore.firestore()
        
        let settings = db.settings
        settings.areTimestampsInSnapshotsEnabled = true
        db.settings = settings
        
        
        db.collection("reservations").getDocuments() {
            (querySnapshot, err) in
            
            // MARK: FB - Boilerplate code to get data from Firestore
            if let err = err {
                print("Error getting data: \(err)")
            } else {
            //    let did = document.documentID
                
                for document in querySnapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                    var d  = document.data()
                    //napshot.value["full_name"]
                    self.textt.text = document["username"] as? String
                    
                }
            }
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
