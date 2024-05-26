//
//  CustomVideoPlayerView.swift
//  GetPack
//
//  Created by Ibnu Nawawi on 24/05/24.
//
import SwiftUI
import AVKit

struct CustomVideoPlayerView: UIViewRepresentable {
    let videoName: String
    let videoType: String

    func makeUIView(context: Context) -> UIView {
        return VideoPlayerUIView(videoName: videoName, videoType: videoType)
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        // Nothing to update
    }
}

class VideoPlayerUIView: UIView {
    private let player = AVPlayer()

    init(videoName: String, videoType: String) {
        super.init(frame: .zero)
        guard let path = Bundle.main.path(forResource: videoName, ofType: videoType) else {
            return
        }
        let url = URL(fileURLWithPath: path)
        let playerItem = AVPlayerItem(url: url)
        
        player.replaceCurrentItem(with: playerItem)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.videoGravity = .resizeAspect
        layer.addSublayer(playerLayer)
        playerLayer.frame = bounds

        // Loop the video
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(playerItemDidReachEnd),
                                               name: .AVPlayerItemDidPlayToEndTime,
                                               object: playerItem)
        player.play()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        layer.sublayers?.first?.frame = bounds
    }

    @objc private func playerItemDidReachEnd(notification: Notification) {
        if let playerItem = notification.object as? AVPlayerItem {
            playerItem.seek(to: CMTime.zero, completionHandler: nil)
            player.play()
        }
    }
}
