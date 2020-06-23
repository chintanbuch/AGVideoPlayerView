//
//  ViewController.swift
//
//  Created by Andrey Golovin on 17.02.17.
//  Copyright © 2017 Andrey Golovin. All rights reserved.
//

import UIKit

class MediaCell: UITableViewCell {
    @IBOutlet weak var playerView: AGVideoPlayerView!
}

class ViewController: UIViewController {

    var items: [URL]!
    var images: [URL?]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        items = [URL(string:"http://yt-dash-mse-test.commondatastorage.googleapis.com/media/motion-20120802-85.mp4")!,
        URL(string:"https://d3pilxenix4mzp.cloudfront.net/42e07f0c-7375-41c3-8243-f0e67639c166/73b86d11-d61f-468b-8f70-d6be7a8bf3b0/offering/620e0dac-27f2-4d43-b7e7-43ed542c7c1b/section/2cfb6ee5-9539-4508-b89d-f821ab5a2e55/ef361880-0611-468e-97ef-a62a2336a806/audio/file_1199573763750337.mp3")!,
        URL(string:"https://d3pilxenix4mzp.cloudfront.net/42e07f0c-7375-41c3-8243-f0e67639c166/73b86d11-d61f-468b-8f70-d6be7a8bf3b0/offering/620e0dac-27f2-4d43-b7e7-43ed542c7c1b/section/2cfb6ee5-9539-4508-b89d-f821ab5a2e55/ef361880-0611-468e-97ef-a62a2336a806/audio/file_1199573763750337.mp3")!,
        URL(string:"https://d3pilxenix4mzp.cloudfront.net/42e07f0c-7375-41c3-8243-f0e67639c166/73b86d11-d61f-468b-8f70-d6be7a8bf3b0/offering/620e0dac-27f2-4d43-b7e7-43ed542c7c1b/section/2cfb6ee5-9539-4508-b89d-f821ab5a2e55/ef361880-0611-468e-97ef-a62a2336a806/audio/file_1199573763750337.mp3")!]
        
        images = [URL(string: "https://i.ytimg.com/vi/aqz-KE-bpKQ/maxresdefault.jpg")!,
                  URL(string: "https://i.ytimg.com/vi/aqz-KE-bpKQ/maxresdefault.jpg")!,
                  URL(string: "https://i.ytimg.com/vi/aqz-KE-bpKQ/maxresdefault.jpg")!,
                  URL(string: "https://i.ytimg.com/vi/aqz-KE-bpKQ/maxresdefault.jpg")!]
        
//        items = [URL(string: "http://www.sample-videos.com/video/mp4/720/big_buck_bunny_720p_1mb.mp4")!,
//            URL(string: "http://yt-dash-mse-test.commondatastorage.googleapis.com/media/car-20120827-85.mp4")!,
//        URL(string: "http://yt-dash-mse-test.commondatastorage.googleapis.com/media/oops-20120802-85.mp4")!,
//        URL(string: "http://yt-dash-mse-test.commondatastorage.googleapis.com/media/motion-20120802-85.mp4")!]
        
//        images = [URL(string: "https://i.ytimg.com/vi/aqz-KE-bpKQ/maxresdefault.jpg"),
//                  URL(string: "http://www.bialystok.pl/resource/video-thumb/192/334/6102/14724/750x415.jpg"),
//                  nil,
//                  nil]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MediaCell", for: indexPath) as! MediaCell
//        let index = indexPath.row % 4
        let index = 1
        let video = items[index]
        let image = images[index]
        
        cell.playerView.videoUrl = video
        cell.playerView.previewImageUrl = image
        cell.playerView.shouldAutoplay = true
        cell.playerView.shouldAutoRepeat = true
        cell.playerView.showsCustomControls = false
        cell.playerView.shouldSwitchToFullscreen = true
        return cell
    }
}
