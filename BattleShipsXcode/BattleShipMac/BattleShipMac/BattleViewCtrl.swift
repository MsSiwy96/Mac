


// The view model is passed to the two embedded collection view controllers. 
// The collection view controllers react and interact with the view model
class BattleViewCtrl: UIViewController {

    lazy var viewModel: BattleViewModel = BattleViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepareForSegue(_ segue: UIStoryboardSegue, sender: AnyObject?) {
        if let vc = segue.destination as? BoardCollectionViewCtrl {
            switch segue.identifier {
            case .some("playerSegue"): vc.afterInitModel(viewModel, imThePlayer: true)
            case .some("enemyPlayerSegue"): vc.afterInitModel(viewModel, imThePlayer: false)
            default: NSLog("correct type, but cant identify segue")
            }
        } else {
            NSLog("cant identify segue")
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

}

