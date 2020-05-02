Example of a Transparent Window macOS Application

I am trying to create a macOS application that is semi-transparent. Like the Terminal application that is included with macOS. I created an NSWindow subclass that is transparent and a pretty standard NSCollectionView in a Storyboard. I can get the application to be semitransparent but when I scroll the NSCollectionViewItems it leaves the background transparent.

Code for the problem is here on [Github][1]

Example of Problem

[![Example of the problem][2]][2]


I have tried many things

 - Get the callbacks of the NSScroll View and get the UI to redraw 
 - Set the background in most of the views in the Storyboard

Here is the custom UIWindow

    import Cocoa
    
    class MainWindow: NSWindow {
        
        override init(contentRect: NSRect, styleMask style: NSWindow.StyleMask, backing backingStoreType: NSWindow.BackingStoreType, defer flag: Bool) {
            super.init(contentRect: contentRect, styleMask: style, backing: backingStoreType, defer: false)
            self.backingType = NSWindow.BackingStoreType.buffered
            self.alphaValue = 1.0
            self.backgroundColor = NSColor.clear
            self.isOpaque = false
        }
    }


Here is the ViewController

    import Cocoa
    
    class ViewController: NSViewController {
        
        @IBOutlet weak var collectionView: NSCollectionView!
        @IBOutlet weak var scrollView: NSScrollView!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            configureCollectionView()
            collectionView.register(ReceiverCollectionViewItem.self, forItemWithIdentifier: NSUserInterfaceItemIdentifier(rawValue: "Cell"))
        }
        
        private func configureCollectionView() {
            let flowLayout = NSCollectionViewFlowLayout()
            flowLayout.itemSize = NSSize(width: 100.0, height: 100.0)
            flowLayout.sectionInset = NSEdgeInsets(top: 10.0, left: 20.0, bottom: 10.0, right: 20.0)
            flowLayout.minimumInteritemSpacing = 20.0
            flowLayout.minimumLineSpacing = 20.0
            collectionView.collectionViewLayout = flowLayout
        }
    }
    
    extension ViewController: NSCollectionViewDataSource {
        func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
            return 10
        }
        
        func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
            let item = collectionView.makeItem(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "Cell"), for: indexPath) 
            return item
        }
    }


  [1]: https://github.com/lewissk/transparentapp
  [2]: https://i.stack.imgur.com/xByAw.gif



