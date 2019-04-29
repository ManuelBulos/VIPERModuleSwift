## Module with divided Interactor (Input & Output)

**Protocols**
```swift
// MARK: - Router
protocol ProfileRouterProtocol: class {}

// MARK: - Presenter
protocol ProfilePresenterProtocol: class {
  var interactor: ProfileInteractorInputProtocol? { get set }
}

// MARK: - Interactor
protocol ProfileInteractorOutputProtocol: class {
  /* Interactor -> Presenter */
}

protocol ProfileInteractorInputProtocol: class {
  /* Presenter -> Interactor */
  var presenter: ProfileInteractorOutputProtocol?  { get set }
}

// MARK: - View
protocol ProfileViewProtocol: class {
  /* Presenter -> ViewController */
  var presenter: ProfilePresenterProtocol?  { get set }
}
```

**Interactor**
```swift
class ProfileInteractor {
  weak var presenter: ProfileInteractorOutputProtocol?
}

extension ProfileInteractor: ProfileInteractorInputProtocol {}
```

**Presenter**
```swift
class ProfilePresenter {

  var interactor: ProfileInteractorInputProtocol?
  weak private var view: ProfileViewProtocol?
  private let router: ProfileRouterProtocol

  init(interactor: ProfileInteractorInputProtocol?, router: ProfileRouterProtocol, view: ProfileViewProtocol) {
    self.interactor = interactor
    self.router = router
    self.view = view
  }
}

extension  ProfilePresenter: ProfilePresenterProtocol {}

extension  ProfilePresenter: ProfileInteractorOutputProtocol {}
```

**Router**
```swift
class ProfileRouter {

  weak var viewController: UIViewController?

  static func createModule() -> UIViewController {
    let interactor = ProfileInteractor()
    let router = ProfileRouter()
    let view = ProfileViewController()
    let presenter = ProfilePresenter(interactor: interactor, router: router, view: view)

    interactor.presenter = presenter
    router.viewController = view
    view.presenter = presenter

    return view
  }
}

extension ProfileRouter: ProfileRouterProtocol {}
```

**View**
```swift
class ProfileViewController: UIViewController {

  var presenter: ProfilePresenterProtocol?

  override func viewDidLoad() {
    super.viewDidLoad()
  }
}

extension ProfileViewController: ProfileViewProtocol {}
```
