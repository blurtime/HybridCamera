import UIKit
import AVFoundation
import With
/**
 * Action
 */
extension ProcessView {
   /**
    * Presents either image or video
    */
   @objc open func present(image: UIImage?, url: URL?) {
      if let image = image, let url = url {
         imageView.setImage(url: url, image: image)
      } else if let url = url {
         videoPlayerView.play(videoURL: url)
      }
   }
}
