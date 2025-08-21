import UIKit
import Combine

class ViewController: UITableViewController {

    private let viewModel = PostsViewModel()
    private var bag = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Posts"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        viewModel.$posts
            .receive(on: DispatchQueue.main)
            .sink { [weak self] _ in
                self?.tableView.reloadData()
            }
            .store(in: &bag)
        
        viewModel.$errorMessage
            .compactMap { $0 }
            .sink { [weak self] msg in
                let alert = UIAlertController(title: "error", message: msg, preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .default))
                self?.present(alert, animated: true)
            }
            .store(in: &bag)
        
        viewModel.load()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.posts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let post = viewModel.posts[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var config = cell.defaultContentConfiguration()
        
        config.text = post.title
        config.secondaryText = "#\(post.id)"
        cell.contentConfiguration = config
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }

    
}

