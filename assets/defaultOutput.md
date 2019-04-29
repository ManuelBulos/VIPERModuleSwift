## Default

**Protocols**
```swift
// MARK: - Router
protocol ProfileRouterProtocol: class {}

// MARK: - Presenter
protocol ProfilePresenterProtocol: class {}

// MARK: - Interactor
protocol ProfileInteractorProtocol: class {
  var presenter: ProfilePresenterProtocol?  { get set }
}

// MARK: - View
protocol ProfileViewProtocol: class {
  var presenter: ProfilePresenterProtocol?  { get set }
}
```

**Interactor**
```swift
class ProfileInteractor {
  weak var presenter: ProfilePresenterProtocol?
}

extension ProfileInteractor: ProfileInteractorProtocol {}
```

**Presenter**
```swift
class ProfilePresenter {

  var interactor: ProfileInteractorProtocol?
  weak private var view: ProfileViewProtocol?
  private let router: ProfileRouterProtocol

  init(interactor: ProfileInteractorProtocol?, router: ProfileRouterProtocol, view: ProfileViewProtocol) {
    self.interactor = interactor
    self.router = router
    self.view = view
  }
}

extension ProfilePresenter: ProfilePresenterProtocol {}
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
